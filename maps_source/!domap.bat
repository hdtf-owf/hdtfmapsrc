@echo off
color 0a

SET /a CORE=%NUMBER_OF_PROCESSORS%-1

SET GAME_DIR=D:\SteamLibrary\steamapps\common\Hunt Down The Freeman
ECHO %GAME_DIR%
SET MAP_DIR	=D:\SteamLibrary\steamapps\common\Hunt Down The Freeman\Bin
ECHO %MAP_DIR%
SET BIN_DIR	=D:\SteamLibrary\steamapps\common\Hunt Down The Freeman\Bin
ECHO %BIN_DIR%

@attrib -r %1

set VPROJECT=%GAME_DIR%\hdtf
ECHO %VPROJECT%

set LOG_FILE=%~n1_compile_time.txt

echo Compile date is %date% > %LOG_FILE%
echo Compile mode is FULL COMPILE >> %LOG_FILE%
echo. >> %LOG_FILE%

color 01
title %1 - VBSP
echo VBSP		started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\vbsp.exe" -game "%VPROJECT%" %1
echo VBSP		finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 05
title %1 - VVIS

echo VVIS		started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\vvis.exe" -threads %CORE% %2 %1
echo VVIS		finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 04
title %1 - VRAD

echo VRAD-HDR	started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\vrad.exe" -hdr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% -game "%VPROJECT%" %1
echo VRAD-HDR	finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 04
title %1 - Lux

echo LUX Cubemap Processing started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\LuxCubemapProcessor.exe" %1
echo LUX Cubemap Processing finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

echo. >> %LOG_FILE%
echo Compile completed at %time% on %date% >> %LOG_FILE%

color 02

del /f *.prt
del /f *.vmx
del /f *.ini
exit
