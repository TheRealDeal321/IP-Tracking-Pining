@echo off
chcp 65001 >null
title Cyber Security - Network Utility Script
color 5

:main_menu
cls
echo ████████╗██╗  ██╗███████╗██████╗ ███████╗ █████╗ ██╗     ██████╗ ███████╗ █████╗ ██╗     
echo ╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔════╝██╔══██╗██║     
echo    ██║   ███████║█████╗  ██████╔╝█████╗  ███████║██║     ██║  ██║█████╗  ███████║██║     
echo    ██║   ██╔══██║██╔══╝  ██╔══██╗██╔══╝  ██╔══██║██║     ██║  ██║██╔══╝  ██╔══██║██║     
echo    ██║   ██║  ██║███████╗██║  ██║███████╗██║  ██║███████╗██████╔╝███████╗██║  ██║███████╗
echo    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝
echo.
echo ==========================================
echo           NETWORK MULTITOOL MENU
echo ==========================================
echo [1] System Information
echo [2] Ping an IP Address / Website
echo [3] Trace Route to IP / Website
echo [4] IP Config (View Network Settings)
echo [5] Exit
echo ==========================================
set /p choice=Enter your choice: 

if %choice%==1 goto system_info
if %choice%==2 goto ping_ip
if %choice%==3 goto trace_route
if %choice%==4 goto ip_config
if %choice%==5 exit
goto main_menu

:system_info
cls
echo System Information:
echo =======================
systeminfo | more
pause
goto main_menu

:ping_ip
cls
set /p ip=Enter IP Address or Website: 
echo Pinging %ip%...
ping %ip%
pause
goto main_menu

:trace_route
cls
set /p trace_ip=Enter IP Address or Website: 
echo Tracing route to %trace_ip%...
tracert %trace_ip%
pause
goto main_menu

:ip_config
cls
echo Viewing IP Configuration:
echo =======================
ipconfig /all | more
pause
goto main_menu
