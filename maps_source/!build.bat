@echo off
color 0a
title Build

START /wait !domap.bat a0c0p1_blackmesa
START /wait !domap.bat a1c1p1_hospital_1
START /wait !domap.bat a1c1p2_hospital_2
START /wait !domap.bat a1c2p3_office
START /wait !domap.bat a1c3p2_urban
START /wait !domap.bat a1c3p4_metro_2
START /wait !domap.bat a1c3p6_station
START /wait !domap.bat a1c4p3_outlands_1
START /wait !domap.bat a3c2p4_boris
START /wait !domap.bat a3c3p1_blackmesaeast
START /wait !domap.bat a3c3p2_ravenholm
START /wait !domap.bat a3c3p3_tunnel
START /wait !domap.bat a3c3p4_streetfight
START /wait !domap.bat a3c4p1_cave
START /wait !domap.bat a3c5p1_badcountry
START /wait !domap.bat a3c6p1_novapro
START /wait !domap.bat a3c6p3_novapro
START /wait !domap.bat a3c7p1_prison_1
START /wait !domap.bat a3c8p1_forest


START /wait !domap_minimal_vrad.bat a3c2p3_ci17-3

ECHO DONE
PAUSE