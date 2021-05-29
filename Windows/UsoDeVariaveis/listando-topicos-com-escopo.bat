@echo off
chcp 65001

:: necessário pra se trabalhar com arrays
setlocal enabledelayedexpansion

SETLOCAL
    echo.
    echo.

    set topicos[0]=Comentários
    set topicos[1]=Variáveis
    set topicos[2]=Arrays
    set topicos[3]=Tomada de decisões
    set topicos[4]=Operadores

    :: o /L é necessário pra se iterar entre os elementos
    :: estrutura do in:
    ::  ->in (elemento inicial, soma a cada laço, elemento final)
    FOR /L %%n in (0, 1, 4) do (
        echo !topicos[%%n]!
    )
ENDLOCAL
