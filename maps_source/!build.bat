@echo off
color 0a
title Build

START /wait !domap.bat a1c1p1_hospital_1
START /wait !domap.bat a1c1p2_hospital_2

REM START /wait !domap_minimal_vrad.bat a3c8p2_outpost

ECHO DONE
PAUSE