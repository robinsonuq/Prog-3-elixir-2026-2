defmodule Estudiantes do

  def main do
      lista = [1.3, 2, 4, 5, 3.5, 2.8, 4.2, 3.9]


      
      {min, max} = encontrar_notas_extremos(lista)
      {aprobados, reprobados} = generar_informe(lista)



      promedio = calcular_promedio(lista)
      IO.puts("El promedio de las calificaciones es: #{promedio}")
  end

  defp calcular_promedio([]), do: 0
  defp calcular_promedio(lista), do: Enum.sum(lista) / length(lista)

  defp encontrar_notas_extremos(notas), do: Enum.min_max(notas)

  defp generar_informe(notas) do
    aprobados = Enum.count(notas, fn nota -> nota >= 3.0 end)
    reprobados = Enum.count(notas, fn nota -> nota < 3.0 end)
    {aprobados, reprobados}
  end

  def contar_estudiantes(lista) do
    cantidad1 = Enum.filter(lista, fn x -> x >= 3 end)
    cantidad2 = Enum.filter(lista, fn x -> x < 3 end)
    aprovados = List.to_tuple(cantidad1)
    reprobados = List.to_tuple(cantidad2)
    IO.inspect(aprovados)
    IO.inspect(reprobados)
  end

end
