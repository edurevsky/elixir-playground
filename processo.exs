defmodule Processo do
  def escuta do
    pid = spawn(fn -> inicia() end)
    loga(pid)
    pid
  end

  defp inicia() do
    processo_pai = self()
    receive do
      numero -> send(processo_pai, IO.puts(numero * 2))
    after
      5_000 -> send(processo_pai, IO.puts("Processo nao recebeu mensagem"))
    end
  end

  defp loga(pid) do
    IO.puts("Processo #{inspect(pid)} iniciado")
  end
end
