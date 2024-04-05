chcp 65001

::Configurações gerais do programa

@echo off
title Jokespock
mode 60, 40
color 0c

::setagens
set /a x=6
set /a jogador=0
set /a sistema=0
set /a empates=0
set /a jogada=(%random% %%5) +1
set /a chute=5
set "usuario="

::Insira nickname
:dadosU
cls
echo. 
echo =========================================
echo              Dados de Usuário
echo.
echo      Para iniciar o programa insira um 
echo       nome de usuário no campo abaixo  
echo.
echo =========================================
echo.
set /p usuario=Nome de usuário: 
if not defined usuario (
	cls
	echo. 
	echo ====================================
	echo   Insira um nome para continuar!
	echo ====================================
	pause > nul
	goto :dadosU
) else (
goto :home)


::Criação da home
:home
cls 
echo. 
echo ==========================================
echo          🖖 Jokenspock 🖖
echo ==========================================
echo.
echo   Bem-vindo ao jokenspoock %usuario%!
echo Para iniciar o jogo ou acessar as regras
echo do jogo selecione a partir do seu teclado
echo uma das opcoes abaixo, ou selecione E para 
echo sair do jogo
echo.
echo [R] Regras do Jogo
echo [C] Comecar Jogo 
echo [L] Lista de Jogadores
echo [H] Retornar para a Game Page
echo.
echo ===========================================
set /p escolha=Insira aqui:
if /i %escolha% == r (goto:regras)
if /i %escolha% == l (goto:registro)
if /i %escolha% == c (goto:jogo)
if /i %escolha% == h (call menu_jogos.bat) else (
	cls
	echo. 
	echo ====================================
	echo  Esta não é uma opção válida!
	echo ====================================
	pause > nul
	goto :home)
	
:: Criação da página de regras do jogo 

:regras
cls 
echo. 
echo  ===============================================================================
echo                           🖖 Regras do Jogo 🖖
echo  ===============================================================================
echo   Pedra: 
echo 		Empata com pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock;
echo   Papel:
echo		Empata com papel; ganha de pedra e spock; perde de tesoura e lagarto; 
echo   Tesoura: 
echo		Empata com tesoura; ganha de lagarto e papel; perde de pedra e spock;
echo   Lagarto:
echo		Empata com lagarto; ganha de papel e spock; perde de pedra e tesoura;
echo   Spock:
echo		Empata com spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel;
echo.
echo ================================================================================
echo              🖖 Pressione qualquer tecla para voltar a home 🖖                  
echo ================================================================================
pause > nul
goto :home	
	
::Criando o "executável" do jogo

:jogo 
if %x% == 0 (goto:fimdejogo)
cls
echo.
echo ========================================================
echo  Escolha um dos numeros correspondetes a uma Jogada
echo.
echo  [1] Pedra 
echo  [2] Papel 
echo  [3] Tesoura
echo  [4] Spock
echo  [5] Lagarto
echo.
echo  Sistema= %sistema% VS Usuário= %jogador%  
echo  Quantidade disponível de chutes: %chute%
echo  Número de Rodadas: %x%
echo.
echo  * CASO DESEJE RETORNAR A HOME PRESSIONE 'P' *
echo ========================================================
set /p ju=Insira um numero correspondente a sua jogada
if /i %ju% equ p (goto:home) 
if  %ju% == 1 (goto:pedra)
if  %ju% == 2 (goto:papel)
if  %ju% == 3 (goto:tesoura)
if  %ju% == 4 (goto:spock)
if  %ju% == 5 (goto:lagarto)

:pedra
if %jogada% == 1 (goto:empate_pedra)
if %jogada% == 3 (goto:vitoria_pedra_tesoura) 
if %jogada% == 5 (goto:vitoria_pedra_lagarto)
if %jogada% == 2 (goto:derrota_pedra_papel)
if %jogada% == 4 (goto:derrota_pedra_spock)


:papel
if  %jogada% == 2 (goto:empate_papel)
if  %jogada% == 1 (goto:vitoria_papel_pedra)
if  %jogada% == 4 (goto:vitoria_papel_spock)
if  %jogada% == 3 (goto:derrota_papel_tesoura)
if  %jogada% == 5 (goto:derrota_papel_lagarto)


:tesoura
if  %jogada% == 3 (goto:empate_tesoura)
if  %jogada% == 5 (goto:vitoria_tesoura_lagarto)
if  %jogada% == 2 (goto:vitoria_tesoura_papel)
if  %jogada% == 1 (goto:derrota_tesoura_pedra)
if  %jogada% == 4 (goto:derrota_tesoura_spock)


:spock
if  %jogada% == 4 (goto:empate_spock)
if  %jogada% == 1 (goto:vitoria_spock_pedra)
if  %jogada% == 3 (goto:vitoria_spock_tesoura)
if  %jogada% == 2 (goto:derrota_spock_papel)
if  %jogada% == 5 (goto:derrota_spock_lagarto)


:lagarto
if  %jogada% == 5 (goto:empate_lagarto)
if  %jogada% == 2 (goto:vitoria_lagarto_papel)
if  %jogada% == 4 (goto:vitoria_lagarto_spock)
if  %jogada% == 3 (goto:derrota_lagarto_tesoura)
if  %jogada% == 1 (goto:derrota_lagarto_pedra)


::Rotinas de derrota

:derrota_pedra_papel
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Pedra perde de papel 
echo.
echo       Jogada do(a) %usuario%: Pedra
echo       Jogada do sistema: Papel
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_pedra_spock
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Pedra perde de spock 
echo.
echo       Jogada do(a) %usuario%: Pedra
echo       Jogada do sistema: Spock
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_papel_tesoura
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Papel perde de tesoura 
echo.
echo       Jogada do(a) %usuario%: Papel
echo       Jogada do sistema: Tesoura
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_papel_lagarto
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Papel perde de lagarto 
echo.
echo       Jogada do(a) %usuario%: Papel
echo       Jogada do sistema: Lagarto
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_tesoura_pedra
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Tesoura perde de pedra 
echo.
echo       Jogada do(a) %usuario%: Tesoura
echo       Jogada do sistema: Pedra
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_tesoura_spock
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Tesoura perde de spock 
echo.
echo       Jogada do(a) %usuario%: Tesoura
echo       Jogada do sistema: Spock
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_spock_papel
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Spock perde de papel 
echo.
echo       Jogada do(a) %usuario%: Spock
echo       Jogada do sistema: Papel
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_spock_lagarto
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Spock perde de lagarto 
echo.
echo       Jogada do(a) %usuario%: Spock
echo       Jogada do sistema: Lagarto
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_lagarto_tesoura
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Lagarto perde de tesooura 
echo.
echo       Jogada do(a) %usuario%: Lagarto
echo       Jogada do sistema: Tesoura
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	

:derrota_lagarto_pedra
cls
echo.
echo ===========================================
echo              😔 Derrota 😔
echo =========================================== 
echo          Lagarto perde de pedra 
echo.
echo       Jogada do(a) %usuario%: Lagarto
echo       Jogada do sistema: Pedra
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_d) else (goto:home)
pause>nul
	


::Rotinas de vitória


:vitoria_pedra_tesoura
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Pedra vence de tesoura 
echo.
echo       Jogada do(a) %usuario%: Pedra
echo       Jogada do sistema: Tesoura
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	


:vitoria_pedra_lagarto
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Pedra vence de lagarto
echo.
echo       Jogada do(a) %usuario%: Pedra
echo       Jogada do sistema: Lagarto
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	


:vitoria_papel_pedra
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Papel vence de Pedra 
echo.
echo       Jogada do(a) %usuario%: Papel
echo       Jogada do sistema: Pedra
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	


:vitoria_papel_spock
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Papel vence de tesoura 
echo.
echo       Jogada do(a) %usuario%: Papel
echo       Jogada do sistema: Spock
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul	
	
:vitoria_tesoura_lagarto
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Tesoura vence de lagarto 
echo.
echo       Jogada do(a) %usuario%: Tesoura
echo       Jogada do sistema: Lagarto
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	
	
:vitoria_tesoura_papel
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Tesoura vence de papel 
echo.
echo       Jogada do(a) %usuario%: Tesoura
echo       Jogada do sistema: Papel
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	
	
:vitoria_spock_pedra
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Spock vence de pedra
echo.
echo       Jogada do(a) %usuario%: Spock
echo       Jogada do sistema: Pedra
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	
	
:vitoria_spock_tesoura
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Spock vence de tesoura 
echo.
echo       Jogada do(a) %usuario%: Spock
echo       Jogada do sistema: Tesoura
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul


:vitoria_lagarto_papel
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo            Parabéns %usuario%!  
echo          Lagarto vence de papel 
echo.
echo       Jogada do(a) %usuario%: Lagarto
echo       Jogada do sistema: Papel
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	
	
:vitoria_lagarto_spock
cls
echo.
echo ===========================================
echo              🎊 Vitória 🎊
echo ===========================================
echo           Parabéns %usuario%!  
echo          lagarto vence de Spock 
echo.
echo       Jogada do(a) %usuario%: Lagarto
echo       Jogada do sistema: Spock
echo ============================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_v) else (goto:home)
pause>nul
	

::Rotinas de empate

:empate_pedra
cls 
echo.
echo =================================
echo           🤝 Empate 🤝
echo =================================
echo     O sistema, assim como você, 
echo      jogou pedra logo vocês 
echo            empataram !
echo =================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_e) else (goto:home)
pause>nul
	

:empate_papel
cls 
echo.
echo =================================
echo           🤝 Empate 🤝
echo =================================
echo     O sistema, assim como você, 
echo      jogou papel logo vocês 
echo            empataram !
echo ==================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_e) else (goto:home)
pause>nul
	

:empate_tesoura
cls 
echo.
echo =================================
echo           🤝 Empate 🤝
echo =================================
echo     O sistema, assim como você, 
echo      jogou tesoura logo vocês 
echo            empataram !
echo ==================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_e) else (goto:home)
pause>nul
	

:empate_spock
cls 
echo.
echo =================================
echo           🤝 Empate 🤝
echo =================================
echo     O sistema, assim como você, 
echo      jogou spock logo vocês 
echo            empataram !
echo ==================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_e) else (goto:home)
pause>nul
	

:empate_lagarto
cls 
echo.
echo =================================
echo           🤝 Empate 🤝
echo =================================
echo     O sistema, assim como você, 
echo      jogou lagarto logo vocês 
echo            empataram !
echo ==================================
set /p pergunta=Deseja jogar uma nova rodada?[s/n]
if /i %pergunta% == s (goto:reiniciar_e) else (goto:home)
pause>nul

::Criando a rotina de fim de jogo
	
:fimdejogo
cls 
echo ===================================
echo          Fim de Jogo
echo ===================================
echo Empates nessa rodada: %empate%
echo Sistema: %sistema%
echo %usuario%: %jogador%
echo.
if %sistema% gtr %jogador% (echo Você perdeu, dessa vez o sistema fez mais pontos :/)
if %jogador% gtr %sistema% (echo Você ganhou, sua quantidade de acertos foi maior do que o sistema!)
if %jogador% == %sistema% (echo EMPATE!)
echo. 
set /p omega=Deseja começar uma nova rodada %usuario%? [s\n]
if %omega% == s (goto:reiniciar_nj) 
if %omega% == n (goto:save)
pause>nul

::Salvando dados do usuario em um arquivo .txt

:save
cls 
echo. 
set /p fim=Digite o seu nome:
echo Pontuação final do usuario: %jogador%
echo Pontuação final do sistema: %sistema%
echo. 
echo %fim%  %jogador%  %empate%  %sistema% >> jogadores.txt
echo.
echo =================================
echo Registro Gravado com Sucesso
echo =================================
echo.
set /p resp=Deseja acessar o ranking de jogadores [S/N]?:
if /i %resp% == s (goto :registro) 
pause >nul
	else (
	goto :home)

:verificar
if %sistema% < "%sistema%" jogadores.txt (
	findstr /i /v "%contato%" jogadores.txt > lixo.txt
	del jogadores.txt
	rename lixo.txt jogadores.txt
	echo.
	echo %fim% 		%jogador% 		%empate% 		%sistema%  >> jogadores.txt
	echo ==============================================================
	echo             Jogadores e seu desempenho no game 
	echo ==============================================================
	echo %usuario% 		%jogador% 		%empate% 		%sistema%
	echo ==============================================================
	echo.
	goto registro ) else (
	goto registro
	
::Criação do Ranking

:registro 
echo.
echo ====================================================================================
echo                               Ranking JokenSpock
echo ====================================================================================
echo.
echo Jogador       Pontos Realizados       Jogadas de Empate       Pontos do Sistema 
echo ====================================================================================
type jogadores.txt
echo ====================================================================================
pause
goto :home

::Restarts

:reiniciar_d
set /a jogada=(%random% %%5) +1
set /a chute= %chute% -1
set /a sistema=%sistema% +1
set /a x=%x% -1
goto jogo 

:reiniciar_e
set /a jogada=(%random% %%5) +1
set /a x=%x% - 1
set /a empate=%empate%+1
goto jogo

:reiniciar_v
set /a jogada=(%random% %%5) +1
set /a x=%x% - 1
set /a jogador=%jogador% +1
goto jogo

:reiniciar_nj
set /a jogada=(%random% %%5) +1
set /a chute=5
set /a x=6
set /a jogador=0
set /a sistema=0
set /a empate=0
goto jogo   

