defmodule CollabXPhoenix.PageController do
  use CollabXPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
