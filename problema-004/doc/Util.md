# `Util`

Módulo con funciones que se reutilizan
- Autor: Robinson Arias Muñoz.
- Fecha: Septiembre del 2026
- Licencia: GNU GPL v3

# `ingresar`

Función para ingresar un dato (:texto, :entero o :real) desde el teclado
## Parámetros
 - mensaje, texto que se le presenta al usuario
## Ejemplos

  ```elixir
  iex> Util.ingresar("Ingrese el nombre: ", :texto)
  ```
  ```elixir
  iex> Util.ingresar("Ingrese la edad: ", :entero)
  ```
 ```elixir
  iex> Util.ingresar("Ingrese la altura: ", :real)
  ```
  o puede usar

  ```elixir
  "Ingrese el nombre: "
  |> Util.ingresar(:texto)
  ```

  ```elixir
  "Ingrese la edad: "
  |> Util.ingresar(:entero)
  ```

  ```elixir
  "Ingrese la altura: "
  |> Util.ingresar(:real)
  ```

# `ingresar_texto`

Por comparabilidad con el ejemplo v2, pero será descontinuada desde al v3.

# `mostrar_error`

Función para mostrar un mensaje de error en la pantalla.
## Parámetros
 - mensaje, texto que se le presenta al usuario como error
## Ejemplos

  ```elixir
  iex> Util.mostrar_error("Dato inválido")
  ```

  o puede usar

  ```elixir
  "Dato inválido"
  |> Util.mostrar_error()
  ```

# `mostrar_mensaje`

Función para mostrar un mensaje en la pantalla.
## Parámetros
 - mensaje, texto que se le presenta al usuario
## Ejemplos

  ```elixir
  iex> Util.mostrar_mensaje("Hola Mundo")
  ```

  o puede usar

  ```elixir
  "Hola Mundo"
  |> Util.mostrar_mensaje()
  ```

---

*Consult [api-reference.md](api-reference.md) for complete listing*
