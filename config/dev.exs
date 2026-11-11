import Config

# Configure your database (SQLite3)
config :todo_list, TodoList.Repo,
  database: Path.expand("../todo_list_dev.db", __DIR__),
  pool_size: 5,
  stacktrace: true,
  show_sensitive_data_on_connection_error: true

# For development, we disable any cache and enable
# debugging and code reloading.
config :todo_list, TodoListWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "d5Qn9h8zV6g9k2M8p7W1x4r3t0Y6u5I8o7P4a3S2d1F0g9H8j7K6l5Z4x3C2v1B0",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:todo_list, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:todo_list, ~w(--watch)]}
  ]

# Watch static and templates for browser reloading.
config :todo_list, TodoListWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/(?!uploads/).*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"lib/todo_list_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]

# Enable dev routes for dashboard
config :todo_list, dev_routes: true

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Include HEEx debug annotations as HTML comments in rendered markup
  debug_heex_annotations: true,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true
