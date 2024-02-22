@echo off
setlocal enabledelayedexpansion

set "directory=%~1"
set "count=0"

if "%directory%" == "" (
    set /p directory=Enter the directory: 
    if "!directory!"=="" (
        echo You didn't enter a directory.
        exit /b 1
    )
)

echo Searching in %directory%...

for %%f in ("%directory%\*.exe" "%directory%\*.com" "%directory%\*.bat") do (
    echo Absolute path: %%~ff
    set /a count+=1
)

echo Total count of executable files: %count%

endlocal
