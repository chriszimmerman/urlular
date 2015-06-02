# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :url, Url.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "dvKr1GoClWdu21+oqwJg/oR7vzI55AWwZVCL7cKzs1sUAISrsT8q49nc4cjeLxKh",
  debug_errors: false,
  pubsub: [name: Url.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :url, Url.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "ecto_simple",
  username: "postgres",
  password: "postgres"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
