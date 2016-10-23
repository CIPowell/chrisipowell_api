# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :chrisipowell_api, ChrisipowellApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P4ATULnnlKy87r3fgeZP1yzwpAmyldwfBp9OBTGk5APfMxvkoeK/DQcYgXQ5p8xD",
  render_errors: [view: ChrisipowellApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: ChrisipowellApi.PubSub,
           adapter: Phoenix.PubSub.PG2],
  gettext: ChrisipowellApi.Gettext, default_locale: "en"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
