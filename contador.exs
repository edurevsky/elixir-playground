defmodule Contador do
  def contar_ocorrencias(texto) when is_bitstring(texto) do
    texto
    |> String.graphemes()
    |> Enum.frequencies()
  end
end
