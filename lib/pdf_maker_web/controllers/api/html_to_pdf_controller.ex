defmodule PdfMakerWeb.HtmlToPdfController do
  @moduledoc false
  use PdfMakerWeb, :controller

  def create(conn, %{"html" => html}) do
    conn
    |> put_resp_content_type("application/pdf")
    |> put_status(:created)
    |> text(PdfMaker.MakePdf.make_pdf(html))
  end
end
