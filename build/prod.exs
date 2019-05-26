use Mix.Config

# Info Logging level
config :logger, level: :info

# Database Settings
config :magnetissimo, Magnetissimo.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: System.get_env("MAG_DATABASE"),
  username: System.get_env("MAG_USERNAME"),
  password: System.get_env("MAG_PASSWORD"),
  hostname: System.get_env("DB_HOST"),
  port: System.get_env("DB_PORT"),
  pool_size: 10 
 
