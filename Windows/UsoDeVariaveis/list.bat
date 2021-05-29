@echo off

:: uma lista é apenas um conjunto de itens passados com um
:: espaço como separador
set list=1 2 3 4

:: vamos iterar pela lista:
( for %%a in (%list%) do (
    echo %%a
))
