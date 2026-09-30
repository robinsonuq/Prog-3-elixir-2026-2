defmodule Estudiantes do

  def main do
      lista = [
          %{nombre: "Juan", calificacion: 4.5},
          %{nombre: "María", calificacion: 3.2},
          %{nombre: "Pedro", calificacion: 2.8},
          %{nombre: "Ana", calificacion: 4.0},
          %{nombre: "Luis", calificacion: 3.5},
      ]

      promedio = calcular_promedio(lista)
      IO.puts("El promedio de las calificaciones es: #{promedio}")

      {min, max} = encontrar_notas_extremos(lista)
      {aprobados, reprobados} = generar_informe(lista)

  end

  defp calcular_promedio([]), do: 0
  defp calcular_promedio(lista) do
    total = Enum.reduce(lista, 0, fn estudiante, acc -> acc + estudiante.calificacion end)
    total / length(lista)
  end

  defp calcular_promedio(lista) do
    Enum.sum(Map.values(lista)) / length(Map.values(lista))
  end

  defp encontrar_notas_extremos(notas), do: Enum.min_max(notas)

  defp generar_informe(notas) do
    aprobados = Enum.count(notas, fn nota -> nota >= 3.0 end)
    reprobados = Enum.count(notas, fn nota -> nota < 3.0 end)
    {aprobados, reprobados}
  end

  def contar_estudiantes(lista) do
    cantidad1 = Enum.filter(lista, fn x -> x >= 3 end)
    cantidad2 = Enum.filter(lista, fn x -> x < 3 end)
    aprobados = List.to_tuple(cantidad1)
    reprobados = List.to_tuple(cantidad2)
    IO.inspect(aprobados)
    IO.inspect(reprobados)
  end

end
