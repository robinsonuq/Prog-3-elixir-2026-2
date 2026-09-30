defmodule Productos do

  def main do

    productos = cargar_productos()
    

  end

  def cargar_productos do

    [
        %{id: 1, nombre: "Teclado mecánico", precio: 180000, stock: 12, categoria: "Periféricos"},
        %{id: 2, nombre: "Mouse inalámbrico", precio: 75000, stock: 0, categoria: "Periféricos"},
        %{id: 3, nombre: "Monitor 24\"", precio: 620000, stock: 5, categoria: "Pantallas"},
        %{id: 4, nombre: "Cable HDMI", precio: 25000, stock: 40, categoria: "Accesorios"},
        %{id: 5, nombre: "Base para portátil", precio: 90000, stock: 0, categoria: "Accesorios"},
        %{id: 6, nombre: "Audífonos", precio: 150000, stock: 8, categoria: "Accesorios"},
        %{id: 7, nombre: "Monitor 27\"", precio: 950000, stock: 3, categoria: "Pantallas"}
    ]

  end


end
