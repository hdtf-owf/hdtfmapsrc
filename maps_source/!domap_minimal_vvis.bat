@echo off
color 0a

SET /a CORE=%NUMBER_OF_PROCESSORS%-1

SET GAME_DIR=F:\SteamLibrary\steamapps\common\Hunt Down The Freeman
ECHO %GAME_DIR%
SET MAP_DIR	=F:\SteamLibrary\steamapps\common\Hunt Down The Freeman\Bin
ECHO %MAP_DIR%
SET BIN_DIR	=F:\SteamLibrary\steamapps\common\Hunt Down The Freeman\Bin
ECHO %BIN_DIR%

@attrib -r %1

set VPROJECT=%GAME_DIR%\hdtf
ECHO %VPROJECT%

set LOG_FILE=%~n1_compile_time.txt

echo Compile date is %date% > %LOG_FILE%
echo Compile mode is FAST VVIS >> %LOG_FILE%
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
"%GAME_DIR%\bin\vvis.exe" -fast -threads %CORE% %2 %1
echo VVIS		finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 04
title %1 - VRAD
rem echo VRAD-LDR	started		%time% >> %LOG_FILE%
rem "%GAME_DIR%\bin\vrad.exe" -ldr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% -game "%VPROJECT%" %1
rem echo VRAD-LDR	finished	%time% >> %LOG_FILE%
rem echo. >> %LOG_FILE%

echo VRAD-HDR	started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\vrad.exe" -hdr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% -game "%VPROJECT%" %1
echo VRAD-HDR	finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

echo. >> %LOG_FILE%
echo Compile completed at %time% on %date% >> %LOG_FILE%

color 02

del /f *.prt
del /f *.vmx
del /f *.ini
exit
