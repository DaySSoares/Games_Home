chcp 65001

@echo off
title Game One
mode 60,40
color 0F

set /a attempt=5
set /a N=(%random% %%10) +1

:home
cls 
echo. 
echo ==========================================
echo          ⚜  Acerte o Número ⚜
echo ==========================================
echo.
echo   Bem-vindo ao jogo de acertar o número
echo   selecione uma das opções abaixo para 
echo   prosseguir ou encerrar o programa
echo.
echo   [R] Regras do Jogo 
echo   [S] Começar  
echo   [E] Sair
echo.
echo ===========================================

set /p homechoose=Type here:
if /i %homechoose% == r (goto :rules)
if /i %homechoose% == s (goto :gamepage)
if /i %homechoose% == E (call menu_jogos.bat) else (
	echo. 
	echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁
	echo  This is not a valid option let's try again! 
	echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁
	pause > nul
	goto :home)
	
:rules 
cls
echo. 
echo ⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚑⚐⚑⚐⚑⚐⚑⚐⚑
echo                  Regras do Jogo 
echo ⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚑⚐⚑⚐⚑⚐⚑⚐⚑
echo.
echo  Jogar esse jogo é bem simples e rápido
echo  cada jogador terá cinco tentativas para acertar o número 
echo  que está escondido, ou seja, um número escolhido pelo sistema 
echo  ao final do jogo esse mesmo número será revelado.
echo.
echo  ⚔  Não chute números acima do valor estabelecido
echo  ⚔  cada jogador terá cinco chances para perder ou ganhar
echo  ⚔  Preste atenção nas dicas dadas ao fim de cada chute
echo.
echo ⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚐⚑⚑⚐⚑⚐⚑⚐⚑⚐⚑
echo.
set /p backhome=Insira a letra H para retornar a página inicial   
if /i %backhome% == h (goto :home) else (
	cls
	echo. 
	echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁
	echo   Essa não é uma opção válida tente novamente
	echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁
	echo .
	echo Pressione qualquer tecla
	pause > nul
	goto :rules)

:gamepage
cls
echo.
echo 👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾
echo                          Game On
echo 👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾
echo.
echo   Escolha um número entre 01 e 10 
echo   Tentativas restantes: %attempt%
echo.
echo 👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾👾
set /p player_try= Responda aqui: 
if %player_try% LSS 1 (goto :attention)
if %player_try% GTR 10 (goto :attention)
if %player_try% == %N% (goto :victory)
if %player_try% LSS %N% (goto :bigger)
if %player_try% GTR %N% (goto :smaller) 
 
echo %player_try%
pause>nul


:victory 
cls 
echo.
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁
echo              🎊🎊 PARABÉNS 🎊🎊 
echo             Você venceu essa rodada
echo              o número secreto era:
echo                       %N%
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁
echo.
set /p play_again= Deseja iniciar uma nova rodada? [S/N]
if /i %play_again% == s (goto :restart)
if /i %play_again% == n (goto :home)
if /i %play_again% NEQ s (goto :invalid)
if /i %play_again% NEQ n (goto :invalid)

:smaller
cls 
echo.
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo                   Tente Novamente
echo        Mas pense em um número menor dessa vez
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo.
set /a attempt = %attempt% - 1
pause 
goto gamepage

:bigger
cls 
echo.
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo                   Tente Novamente
echo         Mas pense em um número maior dessa vez
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo.
set /a attempt = %attempt% - 1
pause 
goto gamepage

:attention
cls 
echo. 
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo  Essa não é uma opção válida tente novamente
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁⚁⚂⚁⚁⚂⚁
echo .
pause
goto :gamepage

:invalid
cls 
echo. 
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁
echo  Essa não é uma opção válida tente novamente
echo ⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚅⚄⚃⚂⚁⚂⚁⚂⚁⚂⚁
echo .
pause
goto :victory
