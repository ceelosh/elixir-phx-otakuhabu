defmodule Otakuhabu.Repo do
  use Ecto.Repo,
    otp_app: :otakuhabu,
    adapter: Ecto.Adapters.Postgres
end
