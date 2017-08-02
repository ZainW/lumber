defmodule LumberWeb.PageController do
  use LumberWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
