defmodule MakePdfBehaviour do
  @type html_t :: String.t()
  @callback make_pdf(html_t) :: list(binary)
end

defmodule MakePdf do
  @moduledoc false

  use GenServer
  use PdfMaker.Timing

  @behaviour MakePdfBehaviour

  require Logger

  ## ##########################################################################
  ## Public API

  def make_pdf(html) do
    timed() do
      ""
    end
  end

  ## ##########################################################################
  ## GenServer

  ## ##########################################################################
  ## Implementation
end
