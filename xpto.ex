defmodule Xpto do
  use GenServer

  def init(_) do
    {:ok, []}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :xpto)
  end

  def handle_cast(n, _) do
    IO.puts(n)
    {:noreply, :ok}
  end
end
