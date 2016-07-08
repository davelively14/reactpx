# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :reactpx,
  ecto_repos: [Reactpx.Repo]

# Configures the endpoint
config :reactpx, Reactpx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZT4Y2uOsMiveg5RnnrSMrpc5USlB+2D2xtxf4oXh27z023GBt0HP6HUKp5f5bTkX",
  render_errors: [view: Reactpx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Reactpx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
