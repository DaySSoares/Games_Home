chcp 65001

@echo off
title math game
color 0f
mode 60, 40

set /a n1=-1
set /a n2=0
set /a n3=1
set /a n4=2
set /a n5=4
set /a n6=6
set /a n7=8
set /a n8=10
set /a n9=13
set /a n10=30
set /a n11=50


:home
cls
echo.
echo =============================
echo         ACERTE O X 
echo =============================
echo   Para iniciar o jogo 
echo selecione abaixo o tipo de 
echo operacao que deseja jogar 
echo %usuario%: 
echo [S] SOMA
echo [L] SUBTRACAO
echo [M] MULTIPLICACAO
echo =============================
echo * PARA ENCERRAR O PROGRAMA *
echo     * PRESSIONE 'E' *
set /p escolha=Insira sua escolha aqui: 
if /i %escolha% == s (goto:soma_01)
if /i %escolha% == l (goto:subtracao_01)
if /i %escolha% == m (goto:multiplicacao_01) 
if /i %escolha% == e (exit) else ( 
	cls 
	echo.
	echo ================================
	echo        OPCAO INVALIDA 
	echo ================================
	pause>nul 
	goto :home)

:soma_01
cls
echo.
echo =============================
echo          Questao 01
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q1=2 +  2 = 
if %q1% == %n5% (goto :soma_02) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :soma_01) 
	pause>nul
	else(goto :home))
	pause>nul
	
:soma_02
cls
echo.
echo =============================
echo          Questao 02
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q2=2 +  4 = 
if %q2% == %n6% (goto:soma_03) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:soma_02)
	pause>nul
	else(goto:home))

:soma_03
cls
echo.
echo =============================
echo          Questao 03
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q3=25 +  25 = 
if %q3% == %n11% (goto:soma_04) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:soma_03) 
	pause>nul 
	else(goto:home))

:soma_04
cls
echo.
echo =============================
echo          Questao 04
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo %n9%
echo.
set /p q4=6.05 +  6.05 = 
if %q4% == %n9% (goto:soma_05)
pause>nul
 else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:soma_04) 
	pause>nul
	else(goto:home))

:soma_05
cls
echo.
echo =============================
echo          Questao Final
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo %n10%
echo.
set /p q5=13 +  17 = 
if %q5% == %n10% (goto:end_game) 
pause>nul
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:soma_05) 
	pause>nul
	else(goto:home))

:end_game
color 0c
cls
echo.
echo =================================
echo            PARABENS!
echo =================================
echo %usuario%, voce concluiu todas 
echo as etapas do nosso mini game 
echo deseja voltar a home para 
echo escolher outras operacoes ou prefere encerrar o programa?
echo.
echo [H] Home
echo [E] Encerrar Programa

set /p escolha=Escreva aqui: 
if /i %escolha% == h (goto:home)
if /i %escolha% == e (exit)
pause >nul 

:subtracao_01
cls
echo.
echo =============================
echo          Questao 01
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q1=100 - 101 =  
if %q1% == %n1% (goto :subtracao_02) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :subtracao_01) 
	pause>nul
	else(goto :home))
	pause>nul
	
:subtracao_02
cls
echo.
echo =============================
echo          Questao 02
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q2= 35 - 22 = 
if %q2% == %n9% (goto :subtracao_03) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:subtracao_02)
	pause>nul
	else(goto:home))

:subtracao_03
cls
echo.
echo =============================
echo          Questao 03
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q3=100 - 50 = 
if %q3% == %n11% (goto :subtracao_04) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :subtracao_03) 
	pause>nul 
	else(goto:home))

:subtracao_04
cls
echo.
echo =============================
echo          Questao 04
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q4=10 - 4 = 
if %q4% == %n6% (goto :subtracao_05)
pause>nul
 else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :subtracao_04) 
	pause>nul
	else(goto:home))

:subtracao_05
cls
echo.
echo =============================
echo          Questao Final
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q5= 200 - 170 = 
if %q5% == %n10% (goto:fim_game) 
pause>nul
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:subtracao_05) 
	pause>nul
	else(goto:home))

:fim_game
color 0c
cls
echo.
echo =================================
echo            PARABENS!
echo =================================
echo %usuario%, voce concluiu todas 
echo as etapas do nosso mini game 
echo deseja voltar a home para 
echo escolher outras operacoes ou prefere encerrar o programa?
echo.
echo [H] Home
echo [E] Encerrar Programa

set /p escolha=Escreva aqui: 
if /i %escolha% == h (goto:home)
if /i %escolha% == e (exit)
pause >nul 


:multiplicacao_01
cls
echo.
echo =============================
echo          Questao 01
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q1=14521 x 0 = 
if %q1% == %n2% (goto :multiplicacao_02) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :multiplicacao_01) 
	pause>nul
	else(goto :home))
	pause>nul
	
:multiplicacao_02
cls
echo.
echo =============================
echo          Questao 02
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q2= 2 x 2 =
if %q2% == %n5% (goto :multiplicacao_03) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:multiplicacao_02)
	pause>nul
	else(goto:home))

:multiplicacao_03
cls
echo.
echo =============================
echo          Questao 03
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q3=15 x 2 =
if %q3% == %n10% (goto :multiplicacao_04) 
pause>nul 
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :multiplicacao_03) 
	pause>nul 
	else(goto:home))

:multiplicacao_04
cls
echo.
echo =============================
echo          Questao 04
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q4=1.5 x 4 = 
if %q4% == %n6% (goto :multiplicacao_05)
pause>nul
 else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto :multiplicacao_04) 
	pause>nul
	else(goto:home))

:multiplicacao_05
cls
echo.
echo =============================
echo          Questao Final
echo     VOCE AVANCOU DE FASE 
echo       CONTINUE JOGANDO!
echo  __________________________
echo %usuario% resolva a conta a seguir 
echo e insira o resultado abaixo:
echo.
set /p q5=(50/100 de 30) x 2 =  
if %q5% == %n10% (goto:fim) 
pause>nul
else (
	cls
	echo.
	echo ======================
	echo     Resposta Errada
	echo  deseja tentar novamente
	echo           [S/N]
	set /p resp=: 
	if %resp% == s (goto:multiplicacao_05) 
	pause>nul
	else(goto:home))

:fim
color 0c
cls
echo.
echo =================================
echo            PARABENS!
echo =================================
echo %usuario%, voce concluiu todas 
echo as etapas do nosso mini game 
echo deseja voltar a home para 
echo escolher outras operacoes ou 
echo prefere encerrar o programa?
echo.
echo [H] Home
echo [E] Encerrar Programa

set /p escolha=Escreva aqui: 
if /i %escolha% == h (goto:home)
if /i %escolha% == e (exit)
pause >nul 