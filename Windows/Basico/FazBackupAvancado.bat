@echo off

Title: Programa de Backup de Dados
echo "FAZENDO BACKUP DE ARQUIVOS"

XCOPY C:\Users\%username%\Pictures\*.* E:\Backup\%username%\imagens\ /D /E /Y /C /K 

XCOPY C:\Users\%username%\Documents\*.* E:\Backup\%username%\documentos\ /D /E /Y /C /K

echo "FIM DO BACKUP"
ECHO.
ECHO.
pause
