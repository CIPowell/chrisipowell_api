defmodule ChrisipowellApi.Router do
  use ChrisipowellApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChrisipowellApi do
    pipe_through :api

    get "/", AppController, :index
  end
end
