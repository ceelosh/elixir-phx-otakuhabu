defmodule Otakuhabu.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Otakuhabu.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Otakuhabu.PubSub}
      # Start a worker by calling: Otakuhabu.Worker.start_link(arg)
      # {Otakuhabu.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Otakuhabu.Supervisor)
  end
end
