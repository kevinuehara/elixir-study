defmodule DiscussWeb.Plugs.RequireAuth do
  import Plug.Conn #halt()
  import Phoenix.Controller #Helpers

  alias DiscussWeb.Router.Helpers

  def init(_params) do
  end

  def call(conn, _params) do
    if conn.assigns[:user] do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in.")
      |> redirect(to: Helpers.topic_path(conn, :index))
      |> halt() # tells to plug pass to the next plug with connection
    end
  end
end
