:: instruções:
:: você deve ter um diretório chamado "origem" no seu disco local C
:: e um diretório chamado "destino" no seu disco local E (provavelmente um pendrive)
@echo off

title: Programa de backup de dados
echo FAZENDO BACKUP DE DADOS

XCOPY C:\origem\*.* E:\destino\ /D /E /Y /C /K

echo FIM DO BACKUP

echo .
echo .

pause
