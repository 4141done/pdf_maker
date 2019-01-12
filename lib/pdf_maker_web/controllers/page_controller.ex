defmodule PdfMakerWeb.PageController do
  use PdfMakerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
