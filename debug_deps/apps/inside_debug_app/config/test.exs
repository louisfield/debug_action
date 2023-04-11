import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :inside_debug_app, InsideDebugApp.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "inside_debug_app_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :inside_debug_app, InsideDebugAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "5Htey4VePOVPfz2Ds1fsrRr/Chnx3srU5kN3BoyKdxrbN+Vy8YJ0nuDV5FXzTqem",
  server: false

# In test we don't send emails.
config :inside_debug_app, InsideDebugApp.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
