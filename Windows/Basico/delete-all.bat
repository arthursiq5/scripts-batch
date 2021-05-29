@echo off

:: deleta todos os arquivos da pasta atual
:: itens ocultos, do sistema ou somente leitura não serão afetados

set folder=%cd%

DEL .
cd ..
:: o código a seguir não vai rodar corretamente porque o arquivo atual não vai mais existir
RMDIR %folder%
