defmodule PdfMakerWeb.Router do
  use PdfMakerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

#   Other scopes may use custom stacks.
   scope "/api", PdfMakerWeb do
    pipe_through :api
    scope "/v1" do
      post "/html", HtmlToPdfController, :create
    end
   end
end
