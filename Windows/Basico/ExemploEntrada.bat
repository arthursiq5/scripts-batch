@echo off

echo.
echo.

:: exemplo de leitura de input
set /p nome=Digite seu nome:
set /p idade=Digite sua idade:

:: exemplo de operação com variável
set /a ano=%date:~6,4%-%idade%

echo.
echo.
echo Ola, %nome%
echo.
echo Voce nasceu aproximadamente em %ano% e tem %idade% anos
echo.
echo.

pause
