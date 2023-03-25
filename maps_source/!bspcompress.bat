@echo off
color 0a
title %1

SET GAME_DIR=E:\hdtf_contentbuilder\steamworks_sdk\tools\ContentBuilder\content\generic\
SET VPROJECT=%GAME_DIR%\hdtf

"%GAME_DIR%\bin\bspzip.exe" -repack -compress %1

@pause

REM "..\..\bin\bspzip" -game HDtF -repack -compress %1
REM "..\..\bin\bspzip" -repack -compress %1
REM @pause