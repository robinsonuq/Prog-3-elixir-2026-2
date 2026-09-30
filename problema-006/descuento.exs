defmodule Descuento do

  def main do
    precio = Util.ingresar("Ingrese el precio:",:real)
    descuento = Util.ingresar("Ingrese el precio:",:real)
    precio_final = calcular_descuento(precio, descuento)
    IO.puts("El precio final con descuento es: #{precio_final}")
  end

  #sin guardas y una sola cláusula
  defp obtener_descuento(precio) do
       cond do
        precio <= 50000 -> 0
        precio <= 100000 -> 0.05
        precio <= 500000 -> 0.1
        true -> 0.15
      end
  end

  defp obtener_descuento(precio) when precio > 50_000 and precio <= 100_000, do: 0.05
  defp obtener_descuento(precio) when precio > 100_000 and precio <= 500_000, do: 0.1
  defp obtener_descuento(precio) when precio > 500_000, do: 0.15
  defp obtener_descuento(_), do: 0










  defp calcular_descuento(precio, descuento), do: precio - (precio * descuento)

  defp generar_mensaje(precio, descuento, precio_final) do
    "El precio original es: #{precio}, el descuento aplicado es: #{descuento * 100}%, y el precio final es: #{precio_final}"
  end

  def formatter(valor) do
    :erlang.float_to_binary(valor, decimals: 2)
  end








end
