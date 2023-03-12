@echo off
color 0a
title Build

START /wait !domap.bat a2c1p1_alaska
START /wait !domap.bat a3c3p2_ravenholm
START /wait !domap.bat a1c1p1_hospital_1
START /wait !domap.bat a1c3p4_metro_2
START /wait !domap.bat a3c6p3_novapro
START /wait !domap.bat a3c5p1_badcountry
START /wait !domap.bat a3c1p1_ship
START /wait !domap.bat a3c8p1_forest
START /wait !domap.bat a2c2p2_factory
START /wait !domap.bat a1c3p2_urban
START /wait !domap.bat a1c3p3_metro_1
START /wait !domap.bat a1c4p2_mesa
START /wait !domap.bat a1c4p3_outlands_1
START /wait !domap.bat a1c4p4_factory
START /wait !domap.bat a3c3p4_streetfight
START /wait !domap.bat a3c7p1_prison_1
START /wait !domap.bat a3c7p2_prison_2



START /wait !domap_minimal_vrad.bat a1c5p1_pier_1
START /wait !domap_minimal_vrad.bat a3c8p2_outpost
START /wait !domap_minimal_vrad.bat a3c2p1_ci17-1
START /wait !domap_minimal_vrad.bat a3c2p2_ci17-2
START /wait !domap_minimal_vrad.bat a3c2p3_ci17-3

ECHO DONE
PAUSE