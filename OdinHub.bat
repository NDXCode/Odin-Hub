set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
@echo off
chcp 65001
cls
color 9
title ╔╗ Odin Hub
:start
mode 57,15
title ╔╗ Odin Hub
cls
echo.
echo  ░█████╗░██████╗░██╗███╗░░██╗  ██╗░░██╗██╗░░░██╗██████╗░
echo  ██╔══██╗██╔══██╗██║████╗░██║  ██║░░██║██║░░░██║██╔══██╗
echo  ██║░░██║██║░░██║██║██╔██╗██║  ███████║██║░░░██║██████╦╝
echo  ██║░░██║██║░░██║██║██║╚████║  ██╔══██║██║░░░██║██╔══██╗
echo  ╚█████╔╝██████╔╝██║██║░╚███║  ██║░░██║╚██████╔╝██████╦╝
echo  ░╚════╝░╚═════╝░╚═╝╚═╝░░╚══╝  ╚═╝░░╚═╝░╚═════╝░╚═════╝░
echo Made by NDXCode
echo.
echo.
echo [1] Odin 3.14.1
echo [2] Odin 4.252
echo [3] Odin 4.42
echo [4] Odin 4.43

set /p NUM=:
set /a FIN=%NUM%

if %FIN%==1 goto od3
if %FIN%==2 goto od4.252
if %FIN%==3 goto od4.42
if %FIN%==4 goto od4.43
if %FIN% GTR 4 goto exit1

:od3
color f9
color 09
title ╔╗ Odin Hub - Opening Odin 3.14.1
cd assets
cd Odin3_v3.14.1
Odin3_v3.14.1.exe
cd..
cd..
cls
goto start

:od4.252
color f9
color 09
title ╔╗ Odin Hub - Opening Odin 4.252
cd assets
Odin_Multi_Downloader_v4.252.exe
cd..
cls
goto start

:od4.42
color f9
color 09
title ╔╗ Odin Hub - Opening Odin 4.42
cd assets
Odin_Multi_Downloader_v4.42.exe
cd..
cls
goto start

:od4.43
color f9
color 09
title ╔╗ Odin Hub - Opening Odin 4.43
cd assets
Odin_Multi_Downloader_v4.43.exe
cd..
cls
goto start

:exit1
exit



