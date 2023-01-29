@echo off
color 0a
title Build

START /wait !domap.bat a2c1p1_alaska
START /wait !domap.bat a3c3p2_ravenholm
START /wait !domap.bat a1c1p1_hospital_1
START /wait !domap.bat a1c3p4_metro_2
REM START /wait !domap_minimal_vrad.bat a3c8p2_outpost

ECHO DONE
PAUSE