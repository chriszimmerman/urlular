use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :url, Url.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :url, Url.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "url_test",
  size: 1 # Use a single connection for transactional tests
