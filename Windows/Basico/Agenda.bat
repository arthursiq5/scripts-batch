@echo off
:: muda o charset para UTF-8 para poder usar caracteres especiais
chcp 65001

set caminho_arquivo=%cd%\Agenda.txt
echo %caminho_arquivo%

:: serve como identificador (:nome)
:menu
Title: Menu

echo.
echo.
echo        #############################
echo        #                           #
echo        #       Minha Agenda        #
echo        #        Telefônica         #
echo        #                           #
echo        #############################
echo.
echo.

echo.
echo.
echo.
echo        #######################################
echo        #                                     #
echo        #   1 - Adicionar contato             #
echo        #   2 - Consultar todos os contatos   #
echo        #   3 - Buscar por nome               #
echo        #   0 - Sair                          #
echo        #                                     #
echo        #######################################
echo.
echo.

set /p opcao=.      Digite aqui sua opção:
if %opcao%==1 ( cls&goto A )
if %opcao%==2 ( cls&goto B )
if %opcao%==3 ( cls&goto C )
if %opcao%==0 ( exit )
cls&goto menu

:A
Title: Adicionar novo contato

echo.
echo.
echo        #############################
echo        #                           #
echo        #       Minha Agenda        #
echo        #        Telefônica         #
echo        #                           #
echo        #############################
echo.
echo.

set /p nome=    Digite o nome do contato :
echo.
echo.
set /p telefone=    Digite o número de telefone :
echo.
echo.
echo    Ok, adicionado à agenda
echo %telefone%    %nome%>>%caminho_arquivo%
cls&goto menu

:B
Title: Lista de Todos os Contatos

echo.
echo.
echo        #############################
echo        #                           #
echo        #       Minha Agenda        #
echo        #        Telefônica         #
echo        #                           #
echo        #############################
echo.
echo.
type %caminho_arquivo%
echo.
echo.
echo.
echo }}} Pressione Enter para voltar ao Menu {{{
pause>nul
cls&goto menu

:C
Title: Busca contato por nome

echo.
echo.
set /p contato= Digite o nome do contato :
echo.
echo.

findstr /i "%contato%" %caminho_arquivo%
echo.
echo.

if errorlevel 1 (
    echo Contato não encontrado
)

echo.
echo.
echo }}} Pressione Enter para voltar ao Menu {{{
pause>nul
cls&goto menu
