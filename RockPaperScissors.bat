@echo off
chcp 65001
mode 40, 30
color 0a
title Jo Ken Po - By: Lucas Alves
:novo
set wins=0 
set loses=0 
set ties=0 
set rodada=0
cls
echo ╔═════════════════════════════════════╗
echo ║  Pedra Papel Tesoura Lagarto Spock  ║
echo ║         By: Lucas Alves             ║
echo ╚═════════════════════════════════════╝
echo.
set /p jogador=Digite seu Nome: 
if "%jogador%"=="" (goto novo)
:menu
cls
echo ╔═════════════════════════════════════╗
echo ║  Pedra Papel Tesoura Lagarto Spock  ║
echo ║         By: Lucas Alves             ║
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo ║          Bem Vindo Ao Jogo          ║
echo ║                MENU:                ║
echo ╠═════════════════════════════════════╣
echo ║                                     ║
echo ║      [1] Pedra      [4] Lagarto     ║
echo ║      [2] Papel      [5] Spock       ║
echo ║      [3] Tesoura    [R] Regras      ║
echo ║                                     ║
echo ╚═════════════════════════════════════╝

set /a computador=(%random% %% 5 + 1)
set /p jogada=Escolha uma opcao: 
set /a rodada=%rodada% + 1

if %computador%==1 (set pc=PEDRA!)
if %computador%==2 (set pc=PAPEL!)
if %computador%==3 (set pc=TESOURA!)
if %computador%==4 (set pc=LAGARTO!)
if %computador%==5 (set pc=SPOCK!)


if %jogada%==r (goto regras)
if %jogada%==R (goto regras)
if %jogada%==1 (goto pedra)
if %jogada%==2 (goto papel)
if %jogada%==3 (goto tesoura)
if %jogada%==4 (goto lagarto)
if %jogada%==5 (goto spock) else (
	goto menu )

:regras
cls
echo ╔═════════════════════════════════════╗
echo ║               Regras:               ║
echo ╠═════════════════════════════════════╣
echo ║ » Pedra:                            ║
echo ║     Ganha de: Tesoura e Lagarto     ║
echo ║     Perde para: Papel e Spock       ║
echo ║     Empata com: Pedra               ║
echo ║                                     ║
echo ║ » Papel:                            ║
echo ║     Ganha de: Pedra e Spock         ║
echo ║     Perde para: Tesoura e Lagarto   ║
echo ║     Empata com: Papel               ║
echo ║                                     ║
echo ║ » Tesoura:                          ║
echo ║     Ganha de: Lagarto e Papel       ║
echo ║     Perde para: Pedra e Spock       ║
echo ║     Empata com: Tesoura             ║
echo ║                                     ║
echo ║ » Lagarto:                          ║
echo ║     Ganha de: Papel e Spock         ║
echo ║     Perde para: Pedra e Tesoura     ║
echo ║     Empata com: Lagarto             ║
echo ║                                     ║
echo ║ » Spock:                            ║
echo ║     Ganha de: Pedra e Tesoura       ║
echo ║     Perde para: Lagarto e Papel     ║
echo ║     Empata com: Spock               ║
echo ╚═════════════════════════════════════╝
set /a rodada=%rodada% - 1
pause
goto menu

:pedra
cls
echo ╔═════════════════════════════════════╗
echo               Rodada %rodada%         
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo   »%jogador% escolheu: PEDRA!         
echo.
echo   »Computador escolheu: %pc%
echo ╠═════════════════════════════════════╣
if %computador%==1 (goto tie)
if %computador%==2 (goto lose)
if %computador%==3 (goto win)
if %computador%==4 (goto win)
if %computador%==5 (goto lose)

:papel
cls
echo ╔═════════════════════════════════════╗
echo               Rodada %rodada%         
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo   »%jogador% escolheu: PAPEL!         
echo.
echo   »Computador escolheu: %pc%
echo ╠═════════════════════════════════════╣
if %computador%==1 (goto win)
if %computador%==2 (goto tie)
if %computador%==3 (goto lose)
if %computador%==4 (goto lose)
if %computador%==5 (goto win)

:tesoura
cls
echo ╔═════════════════════════════════════╗
echo               Rodada %rodada%         
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo   »%jogador% escolheu: TESOURA!         
echo.
echo   »Computador escolheu: %pc%
echo ╠═════════════════════════════════════╣
if %computador%==1 (goto lose)
if %computador%==2 (goto win)
if %computador%==3 (goto tie)
if %computador%==4 (goto win)
if %computador%==5 (goto lose)

:lagarto
cls
echo ╔═════════════════════════════════════╗
echo               Rodada %rodada%         
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo   »%jogador% escolheu: LAGARTO!         
echo.
echo   »Computador escolheu: %pc%
echo ╠═════════════════════════════════════╣
if %computador%==1 (goto lose)
if %computador%==2 (goto win)
if %computador%==3 (goto lose)
if %computador%==4 (goto tie)
if %computador%==5 (goto win)

:spock
cls
echo ╔═════════════════════════════════════╗
echo               Rodada %rodada%         
echo ╚═════════════════════════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo   »%jogador% escolheu: SPOCK!         
echo.
echo   »Computador escolheu: %pc%
echo ╠═════════════════════════════════════╣
if %computador%==1 (goto win)
if %computador%==2 (goto lose)
if %computador%==3 (goto win)
if %computador%==4 (goto lose)
if %computador%==5 (goto tie)

:win
echo ║     » Parabens!! Voce Venceu !! «   ║
echo ╚═════════════════════════════════════╝
set /a wins=%wins% + 1
goto placar

:lose
echo ║     » Que Pena!! Voce Perdeu !! «   ║
echo ╚═════════════════════════════════════╝
set /a loses=%loses% + 1
goto placar

:tie
echo ║     » Opss!! Temos um Empate !! «   ║
echo ╚═════════════════════════════════════╝
set /a ties=%ties% + 1
goto placar

:placar
echo.
echo ╔═════════════════════════════════════╗
echo ║                                     ║
echo ║               PLACAR:               ║
echo ║                                     ║
echo ╠══════════════════╦══════════════════╣
echo      »Vitórias:    ║       %wins%       
echo ╠══════════════════╬══════════════════╣
echo      »Derrotas:    ║       %loses%      
echo ╠══════════════════╬══════════════════╣
echo      »Empates:     ║       %ties%       
echo ╚══════════════════╩══════════════════╝
echo.
echo ╔═════════════════════════════════════╗
echo ║         [R]Jogar Novamente ?        ║
echo ║                                     ║
echo ║      [N]Novo Jogo      [S]Sair      ║
echo ╚═════════════════════════════════════╝
set /p acao=»Oque Deseja Fazer?
if %acao%==r (goto menu)
if %acao%==R (goto menu)
if %acao%==n (goto novo)
if %acao%==N (goto novo)
if %acao%==s (exit)
if %acao%==S (exit) else (
	cls
	goto placar )

