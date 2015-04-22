use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :desert, Desert.Endpoint,
  secret_key_base: "aN8EHD72JQl9Z/e3Rqd+Dxvre2g49kuDt825veV/Qx344183PlW+fajvBJ0nS+5Q"

# Configure your database
config :desert, Desert.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "desert_prod"
