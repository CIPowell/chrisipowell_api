defmodule ChrisipowellApi.AppController do
  use ChrisipowellApi.Web, :controller

  def index(conn, _params) do

    conn |> json(%{
      message: "Hello World!"
    })
  end
end
