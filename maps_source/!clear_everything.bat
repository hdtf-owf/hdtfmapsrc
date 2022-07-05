@echo off
title %1

color 02
del /f *.prt
del /f *.vmx
del /f *.ini
del /f *.log
pause
echo Delete BSPs too?
del /f *.bsp

exit