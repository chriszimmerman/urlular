defmodule Url.PageController do
  use Url.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
