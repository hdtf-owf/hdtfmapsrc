@echo off
color 0a
title Build

for /F "tokens=1,2* delims= " %%A in (!maps_to_compile.txt) do (
	
	SET FULL = full
	SET MINIMAL = minimal
	
	if %%B==minimal (
		ECHO DOING MINIMAL COMPILE
		START /wait !domap_minimal_vrad.bat %%A
	) else (
		START /wait !domap.bat %%A
		ECHO DOING FULL COMPILE
	)
	
	if %%B==full (
		START /wait !domap.bat %%A
	)
	
)

ECHO DONE
PAUSE