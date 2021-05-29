@echo off

:: colocar a declara��o das vari�veis entre aspas permite que se use
:: s�mbolos especiais de atribui��o ou outros na mensagem sem quebrar
:: o programa
set /p "usuario=Usuario> "

echo %usuario:a=x%

:: o >nul redireciona a sa�da do pause para nulo
pause >nul
