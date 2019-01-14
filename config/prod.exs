use Mix.Config

config :pdf_maker, PdfMakerWeb.Endpoint,
  http: [:inet6, port: System.get_env("PORT") || 4000],
  url: [host: "pdf_maker_service.xyz", port: 80],
  secret_key_base: System.get_env("PDF_MAKER_KEY_BASE")

config :logger, level: :info

