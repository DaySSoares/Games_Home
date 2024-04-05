dim user, escolha, escolha_f, respescolha, resescolha, cont1, n, palavras(25), acertos, resp_z, repet_voice, repetir, resp_pular, pular
dim audio

palavras(1)="Cavalo"
palavras(2)="Avestruz"
palavras(3)="Rapadura"
palavras(4)="Peso"
palavras(5)="Cachorro"
palavras(6)="Veado"
palavras(7)="Bruxa"
palavras(8)="Bucha"
palavras(9)="Fissura"
palavras(10)="Bruxela"
palavras(11)="Valinhos"
palavras(12)="Quirela"
palavras(13)="Queijo"
palavras(14)="Anakin"
palavras(15)="Tresseme"
palavras(16)="Circulo"
palavras(17)="Xadrez"
palavras(18)="Rainha"
palavras(19)="Pressa"
palavras(20)="Presa"
palavras(21)="Arqueiro"
palavras(22)="Forro"
palavras(23)="Bahia"
palavras(24)="Chiado"
palavras(25)="Princesa"

call iniciar
' Sub para resetar os valores toda vez que o jogo for iniciado/reiniciado.
sub iniciar()
acertos = 0
pular = 0
repetir = 0
call identificar_user
end sub

sub identificar_user()
user = InputBox("Insira um nome de usuario, por favor:", "HELLO!")
' Adicionar uma validação pra garantir que o jogador inseriu um nome.
if user = Empty then
	msgbox ("Por favor, insira um nome."), vbexclamation, "ERRO!"
	call identificar_user
end if
call escolha_home
end sub

sub escolha_home()
escolha = InputBox(user & ", Por favor escolha uma das alternativas abaixo" & vbNewLine &_
					"para prosseguir no game:" & vbNewLine &_
					"[1] iniciar soletrando" & vbNewLine &_
					"[2] Encerrar o programa", "HOMEPAGE")
' Select case precisa ser feito com strings pq o valor armazenado em "escolha" é, por padrão, uma cadeia (string).
select case escolha
	case "1": 
		call carregar_voz
	case "2":
		respescolha = MsgBox(user & ", deseja realmente encerrar o programa?", vbQuestion+vbYesNo, "ATENCAO")
		if respescolha = vbyes then 
			wscript.quit
		else 
			call escolha_home
		end if
	case Empty:
		MsgBox("Opcao invalida"), vbExclamation + vbOKOnly, "ATENCAO"
		call escolha_home
	case else:
		MsgBox("Opcao invalida"), vbExclamation + vbOKOnly, "ATENCAO"
		call escolha_home
end select 
end sub 

sub carregar_voz()
set audio = CreateObject("SAPI.SPVOICE")
audio.volume=100
audio.rate=1
call sorteio_um
end Sub

sub sorteio_um()
for cont1 = 1 to 25 step 1 
	randomize(second(time)) 
	n=int(rnd*25) + 1	
	audio.speak("A palavra e " & palavras(n))
	call procedimento
next
end sub

sub procedimento()
pergunta1 = InputBox(user & ", escreva agora no espaco abaixo a palavra que voce acabou de escutar." & vbnewline & "(digite O para ouvir a palavra novamente ou P para pular a palavra)" & vbNewLine &_
					"A quantidade de acertos e: " & acertos & " de [QUANTIDADE MAXIMA]", user)
pergunta1 = LCase(pergunta1)
if pergunta1 = LCase(palavras(n)) then 
	acertos = acertos + 1
elseif pergunta1 = "o" then
	repetir_palavra()
elseif pergunta1 = "p" then
	pular_palavra()
elseif pergunta1 = Empty then
	MsgBox("Opcao invalida"), vbExclamation + vbOKOnly, "ATENCAO"
	call procedimento
else
	call fim_de_jogo_derrota
end if
end sub

sub fim_de_jogo_derrota()
escolha_f = InputBox(user & ", voce perdeu" & vbNewLine &_
					"selecione uma das alternativas abaixo" & vbNewLine &_
					"[1] Reiniciar soletrando" & vbNewLine &_
					"[2] Encerrar o programa", HOMEPAGE)
select case escolha_f
	case "1":
		call iniciar
	case "2":
		resescolha=MsgBox(user & ", deseja realmente encerrar o programa?", vbQuestion+vbYesNo, "ATENCAO")
		if resescolha=vbyes then 
			wscript.quit
		else 
			call fim_de_jogo_derrota
		end if 
	case Else:
			MsgBox("Opcao invalida"), vbExclamation + vbOKOnly, "ATENCAO"
			call fim_de_jogo_derrota
end select
end sub

function repetir_palavra()
if repetir = 0 Then
	repet_voice = msgbox("Deseja escutar a palavra mais uma vez?" & vbNewLine &_
	"Voce so podera fazer isso uma vez no jogo", vbQuestion+vbYesNo, user)
	if repet_voice = vbyes then 
		audio.speak("A palavra e " & palavras(n))
		repetir = repetir + 1
	end if
else
	msgbox("Voce ja usou essa opcao"), vboknoly + vbinformation, "AVISO"
end if
call procedimento
end function

function pular_palavra()
if pular = 0 Then
	resp_pular = msgbox("Deseja pular essa palavra?" & vbNewLine &_
	"Voce so podera fazer isso uma vez no jogo", vbQuestion+vbYesNo, user)
	if resp_pular = vbyes then
		pular = pular + 1
	else
		call procedimento
	end if
else
	msgbox("Voce ja usou essa opcao"), vboknoly + vbinformation, "AVISO"
	call procedimento
end if
end function