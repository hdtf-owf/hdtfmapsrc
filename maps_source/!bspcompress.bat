@echo off
color 0a
title %1 - Copyright (c) 2023 M3SA.
setlocal

cd /d "%~dp0"
cd /d ..
cd /d ..

SET GAME_DIR=%cd%
SET BIN_DIR=%GAME_DIR%\Bin
SET MAP_DIR=%GAME_DIR%\HDtF\maps
SET VPROJECT=%GAME_DIR%\HDtF

REM Check if a file was dropped onto the batch file
if "%~1.bsp"=="" (
  echo.
  echo GAME_DIR:
  echo %GAME_DIR%
  echo.
  echo BIN:
  echo %BIN_DIR%
  echo.
  echo MAPS:
  echo %MAP_DIR%
  echo.
  echo VPROJECT:
  echo %VPROJECT%
  echo.
  echo CURRENT DIRECTORY:
  echo %cd%
  exit /b 1
)

echo File "%~1" was dropped onto the batch file.

"%BIN_DIR%\bspzip.exe" -repack -compress "%MAP_DIR%\%~1.bsp"

exit