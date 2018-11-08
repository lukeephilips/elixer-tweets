defmodule TweetThang.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: TweetThang.Worker.start_link(arg)
      # {TweetThang.Worker, arg},
      {TweetThang.TweetServer,[]},
      {TweetThang.Scheduler, []}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TweetThang.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
