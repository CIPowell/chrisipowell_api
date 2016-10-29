use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chrisipowell_api, ChrisipowellApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :chrisipowell_api, ChrisipowellApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "chrisipowell_api_repo",
  username: "",
  password: "",
  hostname: "127.0.0.1",
  port: 32769
