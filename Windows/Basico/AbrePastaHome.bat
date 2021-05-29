@echo off

:: esse script vai abrir a pasta mãe do usuário

set pasta=C:\Users\%username%\

start explorer.exe %pasta%

exit
