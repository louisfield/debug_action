defmodule InsideDebugAppWeb.PageController do
  use InsideDebugAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
