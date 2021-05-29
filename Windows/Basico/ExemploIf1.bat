@echo off

echo.
echo.

:: a ação dos ifs fica dentro dos parênteses
if exist C:\teste\ (
    echo Esta pasta ja existe
) else (
    mkdir C:\teste
    echo Pasta criada
)

echo.
echo.
echo Enter para fechar
:: pause>nul faz o pause sem dar mensagem nenhuma
pause>nul
