defmodule Mapeador do
  def inicia(colecao, funcao) do
    executa(colecao, funcao, [])
  end

  defp executa([], _, acumulador), do: {:ok, acumulador}

  defp executa([primeiro | resto] = colecao, funcao, acumulador) when is_list(colecao) do
    executa(resto, funcao, [funcao.(primeiro) | acumulador])
  end

  defp executa(colecao, _, _), do: {:error, colecao}
end
