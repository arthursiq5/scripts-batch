@ECHO OFF
chcp 65001
CLS

ECHO decolagem

SET /A tentativas=0
SET /A g=%random% %%20 + 1
SET /A w=%RANDOM% %%40 + 1

SET /A r=%g% * %w%
SET /A r_arredondado=%r% / 10

ECHO GRAVIDADE %g%

:ignicao

    SET /P tentativa=DIGA A FORÇA:
    SET /A tentativa_arredondada=%tentativa% / 10

    IF %tentativa_arredondada% GTR %r_arredondado% (
        ECHO MUITO GRANDE
    )
    IF %tentativa_arredondada% LSS %r_arredondado% (
        ECHO MUITO PEQUENO
    )
    if %tentativa_arredondada% EQU %r_arredondado% (
        GOTO decolagem
    )

    SET /A tentativas=%tentativas% + 1
    IF %tentativas% EQU 10 GOTO falha
GOTO ignicao

:decolagem
ECHO VOCÊ CONSEGUIU DECOLAR
PAUSE
EXIT

:falha
ECHO QUE PENA, VOCÊ FOI CAPTURADO PELOS ALIENÍGENAS
PAUSE
