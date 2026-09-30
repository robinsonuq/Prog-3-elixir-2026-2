defmodule Plataforma do

 def main() do

   nombre_usuario = "Ingrese el nombre del usuario" |> Util.ingresar(:texto)
   edad_usuario = "Ingrese la edad del usuario" |> Util.ingresar(:entero)
   credenciales_usuario = "Ingrese las credenciales del usuario" |> Util.ingresar(:booleano)
   intentos_fallidos = "Ingrese la cantidad de intentos fallidos" |> Util.ingresar(:entero)
   resultado = validar_acceso(nombre_usuario, edad_usuario, credenciales_usuario, intentos_fallidos)
   IO.inspect(resultado)
  end

  def verificar_credenciales(credenciales_usuario) do
    if credenciales_usuario do
      :ok
    else
      {:error,"Credenciales inválidas"}
    end
  end

  defp verificar_edad(edad_usuario) do
    unless edad_usuario >= 18 do
      {:error, "El usuario es menor de edad"}
    else
      :ok
    end
  end

  defp verificar_intentos_fallidos(intentos_fallidos) do
    if intentos_fallidos > 3 do
      {:error, "Demasiados intentos fallidos"}
    else
      :ok
    end
  end

  def validar_acceso(nombre_usuario, edad_usuario, credenciales_usuario, intentos_fallidos) do
    resultado_credenciales = verificar_credenciales(credenciales_usuario)
    if resultado_credenciales == {:error, _} do
            resultado_credenciales
    else
      resultado_edad = verificar_edad(edad_usuario)
      if resultado_edad == {:error, _} do
        resultado_edad
      else
        resultado_intentos = verificar_intentos_fallidos(intentos_fallidos)
        if resultado_intentos == {:error, _} do
          resultado_intentos
        else
          {:ok, "Acceso concedido"}
        end
      end
    end
  end
end

Plataforma.main()
