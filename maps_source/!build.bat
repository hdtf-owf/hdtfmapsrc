@echo off
color 0a
title Build

START /wait !domap.bat a1c2p1_downtown_1
START /wait !domap.bat a1c2p2_downtown_2
START /wait !domap.bat a1c3p2_urban
START /wait !domap.bat a1c3p4_metro_2
START /wait !domap.bat a1c3p5_metro_3
START /wait !domap.bat a1c3p6_station
START /wait !domap.bat a1c4p3_outlands_1
START /wait !domap.bat a1c5p2_pier_2


REM START /wait !domap_minimal_vrad.bat a1c1p1_hospital_1
REM START /wait !domap_minimal_vrad.bat a3c8p2_outpost

ECHO DONE
PAUSE