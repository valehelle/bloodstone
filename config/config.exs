# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bloodstone,
  ecto_repos: [Bloodstone.Repo]

# Configures the endpoint
config :bloodstone, BloodstoneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4eZZTmXx10MmwPSe18U4/Ksd0Ek0VImk22368yCUQd7ckCi5i/wtW1MsFSQ4BBWM",
  render_errors: [view: BloodstoneWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bloodstone.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :bloodstone, BloodstoneWeb.Endpoint,
   live_view: [
     signing_salt: "0o3rhyvumregJdLcgoQH11B/fWfcOnXV"
   ]
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
