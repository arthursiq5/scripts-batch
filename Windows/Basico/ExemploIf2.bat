:: o Comando ( IF /i ) pode usar as seguintes opcoes abaixo...

:: EQU – Igual
:: NEQ – Diferente
:: LSS – Menor que
:: LEQ – Menor que ou igual
:: GTR – Maior que
:: GEQ – Maior que ou igual

@echo off

echo.
echo.

SET /P NUM=DIGITE UM NUMERO : 

echo.

if /i %NUM% EQU 10 (
    echo VOCE ACERTOU 
) else (
    echo VOCE ERROU
)

echo.
echo.

echo Pressione qualquer tecla para continuar
pause>nul
