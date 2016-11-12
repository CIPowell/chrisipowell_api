defmodule ChrisipowellApi.AppController do
  use ChrisipowellApi.Web, :controller

  def index(conn, _params) do
    config = Mix.Project.config()

    conn |> json(%{
      application: config[:app],
      version: config[:version]
    })
  end
end
