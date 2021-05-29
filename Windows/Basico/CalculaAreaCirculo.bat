@echo off
chcp 65001

echo.
echo.

:: batch files não suportam números de ponto flutuante
set pi=3
set /p raio=Qual é o raio do circulo?

:: calcula área
set /a area=%pi% * %raio% * %raio%

echo.
echo.

echo Área aproximada: %area% cm²
