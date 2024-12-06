@echo off
color 0a
title Build Act 2
ECHO %TIME% Alaska started.
start /wait !domap.bat a2c1p1_alaska
ECHO %TIME% Distro Center started.
start /wait !domap.bat a2c1p2_distribution_center
ECHO %TIME% Spotlights started.
start /wait !domap.bat a2c2p1_spotlights
ECHO %TIME% Factory started.
start /wait !domap.bat a2c2p2_factory
time /t
pause