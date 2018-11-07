use Mix.Config

config :app,
  namespace: App,
  ecto_repos: [App.Repo],
  generators: [binary_id: true]

config :app, AppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WbPhc/nhL1ERH/8SKedxAlFB+EWKvRAJpgC0bPBrzGprMJ25TUg8lzWzJHJxT7Os",
  render_errors: [view: AppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: App.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

import_config "#{Mix.env()}.exs"
