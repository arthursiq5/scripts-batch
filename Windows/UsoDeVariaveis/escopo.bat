@echo off

echo.
echo.

set globalvar=5
set var=1

:: Tudo que for feito entre o SETLOCAL e o ENDLOCAL será
:: aplicado apenas em escopo local, não alterando em nada
:: as variáveis globais
:: Porém os dados das globais são acessíveis dentro das
:: locais
SETLOCAL
    echo setlocal
    echo.
    set var=12345
    echo var: %var%
    echo globalvar: %globalvar%
    echo.
    echo endlocal
ENDLOCAL

echo.

echo var: %var%
