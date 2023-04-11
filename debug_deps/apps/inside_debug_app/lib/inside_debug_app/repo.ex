defmodule InsideDebugApp.Repo do
  use Ecto.Repo,
    otp_app: :inside_debug_app,
    adapter: Ecto.Adapters.Postgres
end
