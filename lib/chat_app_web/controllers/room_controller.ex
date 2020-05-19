defmodule ChatAppWeb.RoomController do
    use ChatAppWeb, :controller

    alias ChatApp.Talk.Room
  
    def index(conn, _params) do
      render conn, "index.html"
    end

    def new(conn, _params) do
      changeset = Room.changeset(%Room{}, %{})
      render( conn, "new.html" , changeset: changeset )
    end
end
  