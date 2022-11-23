defmodule Tabuada do

  def de(numero) do
    tabuada(numero, 1, [])
  end

  defp tabuada(_, 11, resultados), do: resultados

  defp tabuada(numero, multiplicador, resultados)  do
    tabuada(numero, multiplicador + 1, resultados ++ [numero * multiplicador])
  end

end
