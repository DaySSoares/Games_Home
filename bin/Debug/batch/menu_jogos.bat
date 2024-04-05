chcp 65001

::Configurações gerais do programa

@echo off 
title Menu jogos 
mode 60, 40 
color 0c

::Identificação de usuario 

:home
cls
echo. 
echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸🕸️🕸️🕸️🕸️🕸️️
echo              Game Page Start
echo.
echo      Para iniciar o programa insira um 
echo   um nome de usuário por favor no campo 
echo   abaixo
echo.
echo.
echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️
echo.
set /p usuario=Nome de usuário: 
goto :inicio_menu

::Seleção de jogos

:inicio_menu
cls
echo.
echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️
echo       Bem-Vindo(a) a página de jogos!
echo.
echo   %usuario%, para iniciar um programa e ir aos
echo jogos basta selecionar na entrada abaixo um dos 
echo caracteres referentes aos jogos. Você será 
echo imediatamente redirecionado a aplicação desejada
echo [JS] Jokespock
echo [RN] Número Aleatório
echo [MT] Acerte o Cálculo
echo. 
echo                    ATENÇÃO
echo   * O nome de usuário será pedido novamente ao *
echo    * iniciar qualquer um dos programas acima *
echo.
echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️
set /p escolha=Insira aqui:
if /i %escolha% == js (call jokespock.bat)
if /i %escolha% == rn (call aleatorio.bat)
if /i %escolha% == mt (call conta.bat) 
If /i %escolha% == e (exit) else (
	cls 
	echo. 
	echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸🕸️🕸
	echo           Opção Inválida!
	echo  tente novamente usando os comandos
	echo             corretamente.
	echo.
	echo 🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸️🕸🕸️🕸
	pause>nul
	goto :inicio) 
	
