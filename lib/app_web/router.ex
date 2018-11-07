defmodule AppWeb.Router do
  use AppWeb, :router
  use Plug.ErrorHandler

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  scope "/", AppWeb do
    pipe_through(:browser)
    get("/", PageController, :index)
  end
end
