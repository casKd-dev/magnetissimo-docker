use Mix.Config

# Info Logging level
config :logger, level: :info

# Database Settings
config :magnetissimo, Magnetissimo.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "torrent",
  username: "torrent",
  password: "REPLACE_ME",
  hostname: "database",
  port: 5432,
  pool_size: 10
