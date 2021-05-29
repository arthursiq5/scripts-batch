@echo off
:: exemplo de como funciona um loop iterado (de 0 a 9)
set /a i=0
:loop
    if %i%==10 goto end
    echo Essa eh a iteracao numero %i%.
    set /a i=%i%+1
goto loop

:end
