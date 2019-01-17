use Mix.Config

config :pdf_maker, PdfMakerWeb.Endpoint,
  http: [port: System.get_env("PORT") || 4000],
#  url: [host: "0.0.0.0", port: 80],
  secret_key_base: System.get_env("PDF_MAKER_KEY_BASE")

config :logger, level: :info

