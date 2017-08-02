# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lumber,
  ecto_repos: [Lumber.Repo]

# Configures the endpoint
config :lumber, LumberWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7to1QbHXSldgiCnsqgZ7ziYKvvFm9/gDIlt3F/6OzNrnXaE2LMegCzraypyL50Jv",
  render_errors: [view: LumberWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lumber.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
