defmodule Supervisorr do
  @moduledoc """
  needs to compile the Xpto module in the iex before being used
  `> c("xpto.ex")`
  `> Supervisorr.start_link([])`
  """
  use Supervisor

  def start_link(_) do
    Supervisor.start_link(__MODULE__, :ok, name: :superfodase)
  end

  def init(_) do
    children = [
      %{
        id: Xpto,
        start: {Xpto, :start_link, []}
      }
    ]
    Supervisor.init(children, strategy: :one_for_one)
  end
end
