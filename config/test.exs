use Mix.Config

config :app, AppWeb.Endpoint,
  http: [port: 4001],
  server: true

config :logger, level: :warn

config :wallaby, screenshot_on_failure: true, js_logger: nil
