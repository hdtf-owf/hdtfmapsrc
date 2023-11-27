@echo off
color 0a

if not defined GAME_DIR (
    set GAME_DIR=D:\!steamcmd\hdtf
)

SET /a CORE=%NUMBER_OF_PROCESSORS%-1
set "bspname=%~n1.bsp"
set "filename=%~n1"
set mapsrc_dir=D:\!hdtf_mapsrc\hdtfmapsrc\maps_source
set svn_dir=D:\!hdtf_repo\content\generic\HDtF\maps
set VPROJECT=%GAME_DIR%\hdtf
set map_dir=%GAME_DIR%\HDtF\maps

echo Vmf file:		%1
echo Bsp file:		%bspname%
echo Bsp path:		%mapsrc_dir%\%bspname%
echo mapscr_dir:		%mapsrc_dir%
echo game_dir:		%game_dir%
echo map_dir:		%map_dir%
echo svn_dir: 		%svn_dir%
echo vproject:		%VPROJECT%
echo.
echo move to game maps folder location:		%map_dir%\%bspname%
echo move to svn location:				%svn_dir%\%bspname%

@attrib -r %1

timeout /t 5 > nul
cls
timeout /t 1 > nul

set LOG_FILE=%~n1_compile_time.txt

echo Compile date is %date% > %LOG_FILE%
echo. >> %LOG_FILE%

color 01
title %1 - VBSP
echo VBSP		started			%time% >> %LOG_FILE%
"%GAME_DIR%\bin\vbsp.exe" -game "%VPROJECT%" %1
REM "%GAME_DIR%\bin\vbsp.exe" -nodefaultcubemap -game "%VPROJECT%" %1
echo VBSP		finished		%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 05
title %1 - VVIS

echo VVIS		started			%time% >> %LOG_FILE%

:: Checking for specific inbound files
set INBOUND_FILE_VVIS=%~n1
set FAST_COMPILE_FILES_VVIS=a2c1p1_alaska a3c2p1_ci17-1 a3c2p2_ci17-2 a3c2p3_ci17-3 a3c6p1_novapro a3c6p3_novapro a3c8p2_outpost

REM Checking if the INBOUND_FILE_VVIS matches any of the FAST_COMPILE_FILES_VVIS
for %%f in (%FAST_COMPILE_FILES_VVIS%) do (
    if /i "%INBOUND_FILE_VVIS%"=="%%f" (
		echo			VVIS FAST COMPILE >> %LOG_FILE%
        set VVIS_COMMAND="%GAME_DIR%\bin\vvis.exe" -fast -threads %CORE% %2 %1
    )
)

:: If the VVIS_COMMAND is not set, use the default command
if not defined VVIS_COMMAND (
	echo			VVIS FULL COMPILE >> %LOG_FILE%
    set VVIS_COMMAND="%GAME_DIR%\bin\vvis.exe" -threads %CORE% %2 %1
)

%VVIS_COMMAND%

echo VVIS		finished		%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 04
title %1 - VRAD

echo VRAD		started			%time% >> %LOG_FILE%

:: Checking for specific inbound files
set INBOUND_FILE_VRAD=%~n1
set FAST_COMPILE_FILES_VRAD=a3c8p2_outpost a1c1p1_hospital_1

REM Checking if the INBOUND_FILE_VRAD matches any of the FAST_COMPILE_FILES_VRAD
for %%f in (%FAST_COMPILE_FILES_VRAD%) do (
    if /i "%INBOUND_FILE_VRAD%"=="%%f" (
		echo			VRAD FAST COMPILE >> %LOG_FILE%
        set VRAD_COMMAND="%GAME_DIR%\bin\vrad.exe" -hdr -threads %CORE% -game "%VPROJECT%" %1
    )
)

:: If the VRAD_COMMAND is not set, use the default command
if not defined VRAD_COMMAND (
	echo			VRAD FULL COMPILE >> %LOG_FILE%
    set VRAD_COMMAND="%GAME_DIR%\bin\vrad.exe" -hdr -ambientocclusion -aosamples 32 -worldtextureshadows -translucentshadows -final -threads %CORE% -game "%VPROJECT%" %1
)

%VRAD_COMMAND%

echo VRAD		finished		%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

color 04
title %1 - Lux

echo LUX Cubemap Processing started		%time% >> %LOG_FILE%
"%GAME_DIR%\bin\LuxCubemapProcessor.exe" %1
echo LUX Cubemap Processing finished		%time% >> %LOG_FILE%
echo. >> %LOG_FILE%

echo. >> %LOG_FILE%
echo Compile completed at %time% on %date% >> %LOG_FILE%

color 02
echo on

:CLEANUP
timeout /t 1 > nul
echo.
echo CLEANUP
echo CLEANUP
del /f %filename%.prt
del /f %filename%.vmx
::del /f filename.ini

exit

:MOVE_TO_GAMEFOLDER
timeout /t 1 > nul
echo.
echo MOVE_TO_GAMEFOLDER
COPY /y "%mapsrc_dir%\%bspname%" "%map_dir%\%bspname%"

:COMPILE_CUBEMAPS
timeout /t 1 > nul
echo.
echo COMPILE_CUBEMAPS
cd /d "D:\!steamcmd\hdtf"
START /wait /min hdtf.exe -game hdtf -sw -w 1024 -h 1024 -novid -dxlevel 95 +mat_hdr_level 2 +mat_specular 0 -buildcubemaps 2 +map "%map_dir%\%bspname%"

:BSP_COMPRESS
timeout /t 1 > nul
echo.
echo BSP_COMPRESS
cd /d "D:\!steamcmd\hdtf\Bin\"
bspzip.exe -repack -compress %map_dir%\%bspname%

:MOVE_TO_SVN
timeout /t 1 > nul
echo.
echo MOVE_TO_SVN
COPY /y "%map_dir%\%bspname%" "%bspname%\%svn_dir%"

pause

exit
