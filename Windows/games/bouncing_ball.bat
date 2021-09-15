@echo off
color 0A

echo.
echo -------------------------------
echo Welcome to Bouncing Ball
echo -------------------------------

set /p bounce=Set bounce quantity (enter for null):
if not defined bounce set bounce=5

set delay=1

:bouncing
echo -------------------------------
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo               _
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo.
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
echo -------------------------------
echo               *
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo -------------------------------
ping localhost -n %delay% >nul
cls
set /A bounce=%bounce%-1

if %bounce% GTR 0 goto bouncing

echo Thanks for watching
