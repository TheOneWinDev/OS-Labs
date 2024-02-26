@echo off
setlocal enabledelayedexpansion

set /p "directory=enter path: "

if not exist "%directory%" (
    echo "not exist".
    exit /b
)

set "count=0"

for /d /r "%directory%" %%i in (System*) do (
    set /a count+=1
)

echo "System dir's": %count%

endlocal
