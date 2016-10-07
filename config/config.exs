# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :collab_x_phoenix,
  ecto_repos: [CollabXPhoenix.Repo]

# Configures the endpoint
config :collab_x_phoenix, CollabXPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t22bxeKkpwbSS3pWzL4w9rVsZ2r2fNDnmTLurGEusURVVW/exdAqBqWf4I6kSSrR",
  render_errors: [view: CollabXPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CollabXPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
