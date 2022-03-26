@echo off
color 0a
title Build Act 2
ECHO %TIME% Alaska started.
start /wait !domap.bat a2c1p1_alaska
ECHO %TIME% Distro Center started.
start /wait !domap.bat a2c1p4_distribution_center
ECHO %TIME% Lasers started.
start /wait !domap.bat a2c2p1_lasers
ECHO %TIME% Factory started.
start /wait !domap.bat a2c2p2_factory
time /t
pause