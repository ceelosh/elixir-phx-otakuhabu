import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :otakuhabu, Otakuhabu.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "otakuhabu_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :otakuhabu_web, OtakuhabuWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qP7DZ85IU2GP7HV3J8FYpFv5eRrJVvcCdHRHZKtG6Fv0k679I5VIUH6GSnd5Vgrf",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :otakuhabu, Otakuhabu.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
