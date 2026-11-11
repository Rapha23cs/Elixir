import Config

# Configure your database (SQLite3)
config :todo_list, TodoList.Repo,
  database: Path.expand("../todo_list_test.db", __DIR__),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todo_list, TodoListWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "t5Qn9h8zV6g9k2M8p7W1x4r3t0Y6u5I8o7P4a3S2d1F0g9H8j7K6l5Z4x3C2v1B0",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
