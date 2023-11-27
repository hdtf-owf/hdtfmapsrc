@echo off
color 0a
title Build

for /F "tokens=1,2* delims= " %%A in (maps_to_compile.txt) do (
    echo Processing map: %%A
    START /wait !domap_server.bat %%A
)
pause