@echo off
color 0a
title Build

START /wait !domap.bat a3c5p1_badcountry
START /wait !domap_minimal_vrad.bat a3c2p1_ci17-1
START /wait !domap.bat a2c2p2_factory
REM START /wait !domap.bat a3c4p1_cave
REM START /wait !domap.bat a3c4p2_bunker
REM START /wait !domap.bat a0c0p0_bootcamp
REM START /wait !domap.bat a1c1p1_hospital_1
REM START /wait !domap.bat a1c2p1_downtown_1
REM START /wait !domap.bat a1c2p2_downtown_2
REM START /wait !domap.bat a1c3p2_urban
REM START /wait !domap.bat a1c3p4_metro_2
REM START /wait !domap.bat a1c3p5_metro_3
REM START /wait !domap.bat a1c3p6_station
REM START /wait !domap.bat a1c4p3_outlands_1
REM START /wait !domap.bat a1c4p4_factory
REM START /wait !domap.bat a1c5p2_pier_2
REM START /wait !domap.bat a1c5p4_ship


REM START /wait !domap_minimal_vrad.bat a3c8p2_outpost

ECHO DONE
PAUSE