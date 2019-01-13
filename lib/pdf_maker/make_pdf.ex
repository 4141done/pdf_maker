defmodule PdfMaker.MakePdfBehaviour do
  @type html_t :: String.t()
  @callback make_pdf(html_t) :: list(binary)
end

defmodule PdfMaker.MakePdf do
  @moduledoc false

  use GenServer
  use PdfMaker.Timing

  @behaviour PdfMaker.MakePdfBehaviour

  require Logger

  ## ##########################################################################
  ## Public API

  def make_pdf(html) do
    timed() do
      GenServer.call(:pdf_maker,  {:make_pdf, %{html: html}})
    end
  end

  ## ##########################################################################
  ## GenServer

  def init(args) do
    {:ok, args}
  end

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: :pdf_maker)
  end

  def handle_call({:make_pdf, %{html: html}}, _from, state) do
    Logger.info("#{__MODULE__}::handle_call:make_pdf ")
    pdf_content = convert_html_to_pdf(html)
    {:reply, pdf_content, state}
  end

  ## ##########################################################################
  ## Implementation

  defp convert_html_to_pdf(html) do
    {:ok, filename} = PdfGenerator.generate html
    {:ok, pdf_content} = File.read(filename)
    pdf_content
  end
end
