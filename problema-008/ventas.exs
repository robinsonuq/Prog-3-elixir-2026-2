defmodule Ventas do

  def main do

    venta = cargar_ventas()
    #Requerimiento 1: Obtener la lista de productos que pertenecen a una categoría específica
    #Desarrollar una función que reciba la lista de ventas y una categoría,
    # y retorne únicamente las ventas correspondientes a dicha categoría.

    productos_por_categoria = filtrar_por_categoria(venta, "Bebidas")

    IO.inspect(productos_por_categoria, label: "Productos por categoria :")





  end

  def filtrar_por_categoria(ventas, categoria) do
    Enum.filter(ventas, fn venta -> venta.categoria == categoria end)
  end

  def filtrar_por_categoria2(ventas, categoria) do
    Enum.filter(ventas, &(&1.categoria == categoria))
  end

  def filtrar_por_categoria3(ventas, categoria) do
    Enum.filter(ventas,fn %{categoria: cat} -> cat == categoria end)
  end

  defp obtener_nombres(ventas) do
    ventas
    |>Enum.map(&(&1.producto))
  end

  def obtener_nombres_productos(ventas) do
    Enum.map(ventas, &(&1.producto))
  end

  def nombres_productos(ventas) do
    Enum.map(ventas, fn venta -> venta.producto end)
  end

  def obtener_categorias_unicas(ventas) do
    ventas
    |>Enum.map(&(&1.categoria))
    |>Enum.uniq()
  end

  def agrupar_productos_por_categoria(ventas) do
    ventas
    |>Enum.group_by(&(&1.categoria), &(&1.producto))

    #%{
    #     "Bebidas" => ["Café", "Té", "Jugo"],
    #     "Panadería" => ["Pan", "Croissant", "Torta", "Galleta"]
    # }
    #
  end


  def ventas_por_categoria_conteo(ventas) do
    Enum.frequencies_by(ventas, fn venta -> venta.categoria end)
  end

  defp ventas_por_categoria(ventas) do
    Enum.group_by(ventas, fn venta -> venta.categoria end, fn venta -> venta.cantidad end)
    |> Enum.map(fn {categoria, cantidades} -> {categoria, Enum.sum(cantidades)} end)
  end

  # unidades se vendieron por categoría

   def sumar_unidades_por_categoria(ventas) do


    [
      %{producto: "Café", categoria: "Bebidas", cantidad: 3},
      %{producto: "Té", categoria: "Bebidas", cantidad: 1},
      %{producto: "Jugo", categoria: "Bebidas", cantidad: 6},

      %{producto: "Pan", categoria: "Panadería", cantidad: 5},
      %{producto: "Croissant", categoria: "Panadería", cantidad: 2},

      %{producto: "Torta", categoria: "Granos", cantidad: 1},
      %{producto: "Galleta", categoria: "Granos", cantidad: 3}
    ]


     [2,3,4,4,5]
    Enum.reduce(ventas, %{}, fn venta, acc ->
        Map.update(acc, venta.categoria, venta.cantidad, &(&1 + venta.cantidad))
    end)

    #     %{  "Bebidas" => 4,
    #       "Panadería" => 5
    #    }


  end

  def sumar_unidades_por_categoria(ventas) do
    ventas
    |>Enum.group_by(fn venta -> venta.categoria end)
    |>Enum.map(fn {categoria, ventas} ->
      {categoria, Enum.reduce(ventas, 0, fn venta, acc -> acc + venta.cantidad end)}
    end)
  end


 #       %{
    #       "Bebidas" => 3,
    #       "Panadería" => 7
    #    }
    #




  def cargar_ventas do

    [
      %{producto: "Café", categoria: "Bebidas", cantidad: 3},
      %{producto: "Té", categoria: "Bebidas", cantidad: 1},
      %{producto: "Jugo", categoria: "Bebidas", cantidad: 6},

      %{producto: "Pan", categoria: "Panadería", cantidad: 5},
      %{producto: "Croissant", categoria: "Panadería", cantidad: 2},

      %{producto: "Torta", categoria: "Granos", cantidad: 1},
      %{producto: "Galleta", categoria: "Granos", cantidad: 3}
    ]

  end


end
