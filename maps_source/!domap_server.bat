@echo off
color 0a

SET /a CORE=%NUMBER_OF_PROCESSORS%-1

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
REM "%GAME_DIR%\bin\vbsp.exe" -nodefaultcubemap -game "%VPROJECT%" %1
echo VBSP		finished	%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 05
title %1 - VVIS

echo VVIS		started		%time% >> %LOG_FILE%

:: Checking for specific inbound files
set INBOUND_FILE=%~n1
set FAST_COMPILE_FILES=a2c1p1_alaska a3c2p1_ci17-1 a3c2p2_ci17-2 a3c2p3_ci17-3 a3c6p1_novapro a3c6p3_novapro a3c8p2_outpost

REM Checking if the INBOUND_FILE matches any of the FAST_COMPILE_FILES
for %%f in (%FAST_COMPILE_FILES%) do (
    if /i "%INBOUND_FILE%"=="%%f" (
        set VVIS_COMMAND="%GAME_DIR%\bin\vvis.exe" -fast -threads %CORE% %2 %1
    )
)

:: If the VVIS_COMMAND is not set, use the default command
if not defined VVIS_COMMAND (
    set VVIS_COMMAND="%GAME_DIR%\bin\vvis.exe" -threads %CORE% %2 %1
)

%VVIS_COMMAND%

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
