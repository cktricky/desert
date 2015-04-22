defmodule Desert.Endpoint do
  use Phoenix.Endpoint, otp_app: :desert

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :desert,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_desert_key",
    signing_salt: "uqDxLpHv",
    encryption_salt: "wuVUqbgw"

  plug :router, Desert.Router
end
