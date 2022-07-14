@echo off
color 0a
title Build

START /wait !domap.bat a3c3p1_blackmesaeast
START /wait !domap.bat a3c1p2_jump
START /wait !domap.bat a1c5p4_ship
START /wait !domap.bat a2c1p1_alaska






REM START /wait !domap_minimal_vrad.bat a3c8p2_outpost

ECHO DONE
PAUSE