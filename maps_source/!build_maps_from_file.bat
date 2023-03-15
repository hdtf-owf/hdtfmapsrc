@echo off
color 0a
title Build

for /F "tokens=*" %%A in (!maps_to_compile.txt) do START /wait !domap.bat %%A

ECHO DONE
PAUSE