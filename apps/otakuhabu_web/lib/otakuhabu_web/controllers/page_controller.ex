defmodule OtakuhabuWeb.PageController do
  use OtakuhabuWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
