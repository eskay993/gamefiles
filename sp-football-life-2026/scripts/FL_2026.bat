@echo off

set "fl=FL_2026.exe"
set "sider=SiderAddons\sider.exe"
set "log=SiderAddons\sider-app.log"

cd /d "%~dp0"
del %log%
echo Launching sider...
start "" %sider%

:wait
if not exist "%log%" (
    ping -n 1 127.0.0.1 >nul
    goto wait
)
 
ping -n 3 127.0.0.1 >nul
echo sider active...
echo Launching FL...
start "" %fl%