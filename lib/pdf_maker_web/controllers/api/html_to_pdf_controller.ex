defmodule PdfMakerWeb.HtmlToPdfController do
  @moduledoc false
  use PdfMakerWeb, :controller

  action_fallback(PdfMakerWeb.FallbackController)

  def create(conn, %{"html" => html}) do
    conn
    |> put_resp_content_type("application/octet-stream", nil)
    |> put_resp_header("content-disposition", ~s[attachment; filename="receipt.pdf"])
    |> put_status(:created)
    |> send_file(200, PdfMaker.MakePdf.make_pdf(html))
  end
end
