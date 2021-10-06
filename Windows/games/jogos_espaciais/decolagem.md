# batch script - Jogo da Decolagem

Eu encontrei um livro interessante na minha faculdade chamado "Programas de Jogos Espaciais", escrito por Daniel Isaaman e Jenny Tyler em 1982. Ele tem vários jogos para serem desenvolvidos por crianças e estudantes na linguagem BASIC. Achei interessante, e resolvi começar a pegar esses exercícios e reproduzir em uma outra linguagem antiga que muitas vezes é ignorada por nós: o batch.

Então, vamos a detalhes da implementação:

> Você é o comandante de uma espaçonave. Sua nave caiu em um planeta desconhecido e você precisa decolar rapidamente em uma nave alienígena que conseguiu capturar. O computador da nave lhe diz qual é a força da gravdade do planeta, mas você tem que adivinhar qual a força que deve imprimir aos motores para decolar. Se a força for muito pequena, a nave não conseguirá subir. Se for muito grande, um mecanismo de segurança entrará em ação, desligando os motores para evitar que fiquem superaquecidos. Se ainda estiver no planeta depois de dez tentativas, será capturado pelos alienígenas.

Primeiramente, eu fiz algumas definições especiais. As linhas abaixo indicam, respectivamente, o desativamento da impressão dos comandos no prompt, a definição do charset do arquivo (permitindo que sejam escritos caracteres com acentuação), e, por fim, limpando comandos anteriores.

```bat
@ECHO OFF
chcp 65001
CLS
```

O primeiro desafio foi encontrar uma forma de preencher a gravidade com um valor aleatório entre 1 e 20 e o peso da nave com um valor entre 1 e 40. Primeiro eu tinha tentado da forma tradicional que eu aprendi em outras linguagens parecidas:

```bat
SET /A g=%RANDOM% * 20 / 32767 + 1
SET /A w=%RANDOM% * 40 / 32767 + 1
```

Qual é o problema dessa abordagem? Por algum motivo, o Windows preenchia as variáveis com 20 e 40, respectivamente, independente de quantas vezes eu executasse o cálculo. Porém depois de umas pesquisas no [poderoso oráculo da internet](https://stackoverflow.com/questions/5777400/how-to-use-random-in-batch-script) eu descobri que você podia colocar o valor random seguido pelo parâmetro do limite do intervalo. Segue como eu fiz:

```bat
SET /A g=%random% %%20 + 1
SET /A w=%RANDOM% %%40 + 1
```

O código que temos até agora é isso aqui:

```bat
@ECHO OFF
chcp 65001
CLS

ECHO decolagem

SET /A g=%random% %%20 + 1
SET /A w=%RANDOM% %%40 + 1

SET /A r=%g% * %w%
ECHO GRAVIDADE %g%
```

Após isso, faremos um loop. Primeiro, criamos uma variável para fazer o teste, criamos as sessões do programa e criamos o intervalo do loop:

```bat
SET /A tentativas=0
:ignicao

GOTO ignicao
:decolagem
REM caso de sucesso
:falha
REM caso de falha
```

Depois temos que receber os dados de entrada do usuário:

```bat
:ignicao

    SET /P tentativa=DIGA A FORÇA:

    REM testes do programa

    SET /A tentativas=%tentativas% + 1

GOTO ignicao
```

E agora vamos aos testes. Para isso, precisaremos de um `if`, mas, como você deve ter percebido, a sintaxe dos operadores conficionais do `if` no batch é um pouco diferente. Vou deixar aí embaixo uma listinha com o operador e seu equivalente em C:

- **EQU** - **==**
- **NEQ** - **!=**
- **LSS** - **<**
- **LEQ** - **<=**
- **GTR** - **>**
- **GEQ** - **>=**

Agora vamos aos testes. Não é exatamente difícil essa parte, ela só é um pouco chatinha, já que a sintaxe é um pouco mais verbosa que em outras linguagens de programação, mas, depois que você se acostuma, fica bem fácil:

```bat
IF %tentativa% GTR %r% (
    ECHO MUITO GRANDE
)
IF %tentativa% LSS %r% (
    ECHO MUITO PEQUENO
)
if %tentativa% EQU %r% (
    GOTO decolagem
)
```

E nosso programa final está aqui:

```bat
@ECHO OFF
chcp 65001
CLS

ECHO decolagem

SET /A tentativas=0
SET /A g=%random% %%20 + 1
SET /A w=%RANDOM% %%40 + 1

SET /A r=%g% * %w%

ECHO GRAVIDADE %g%

:ignicao

    SET /P tentativa=DIGA A FORÇA:
    
    IF %tentativa% GTR %r% (
        ECHO MUITO GRANDE
    )
    IF %tentativa% LSS %r% (
        ECHO MUITO PEQUENO
    )
    if %tentativa% EQU %r% (
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
```

Porém existe um problema com esse código: caso você tenha percebido, a multiplicação entre dois números aleatórios, um entre 1 e 20 e outro entre 1 e 40, é um número extremamente preciso. Eu não sei quanto a você, mas eu acho bem difícil de se jogar um jogo tão difícil assim, então eu dei meu toque pessoal ao programa.

Primeiro, eu criei duas variáveis de arredondamento:

```bat
REM código inicial
SET /A r=%g% * %w%
SET /A r_arredondado=%r% / 10

REM outros detalhes

:ignicao

    SET /P tentativa=DIGA A FORÇA:
    SET /A tentativa_arredondada=%tentativa% / 10

REM resto do programa
```

E depois substituí os nomes das variáveis nos testes:

```bat
IF %tentativa_arredondada% GTR %r_arredondado% (
    ECHO MUITO GRANDE
)
IF %tentativa_arredondada% LSS %r_arredondado% (
    ECHO MUITO PEQUENO
)
if %tentativa_arredondada% EQU %r_arredondado% (
    GOTO decolagem
)
```

Então, o programa final seria esse aqui:

```bat
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

```
