@echo off

echo ========================================
echo   GENERANDO DOCUMENTACION CON EXDOC
echo ========================================
echo.

echo {application, util, [{modules, ['Elixir.Util']}]} > util.app

echo Generando documentacion...

cmd /c ""%HOMEDRIVE%%HOMEPATH%\.mix\escripts\ex_doc" "Util" "1.0.0" . -m "Util" -o doc"

if errorlevel 1 (
    echo.
    echo ERROR generando la documentacion.
    pause
    exit /b 1
)

echo.
echo Documentacion generada correctamente.
echo.

echo Abriendo documentacion en el navegador predeterminado...

start "" "%~dp0doc\index.html"

echo.
echo Proceso terminado.
