@echo off
color 0a
title Build All

START /wait !domap.bat a0c0p0_bootcamp
START /wait !domap.bat a0c0p1_blackmesa
START /wait !domap.bat a1c1p1_hospital_1
START /wait !domap.bat a1c1p2_hospital_2
START /wait !domap.bat a1c2p1_downtown_1
START /wait !domap.bat a1c2p2_downtown_2
START /wait !domap.bat a1c2p3_office
START /wait !domap.bat a1c3p1_canals_1
START /wait !domap.bat a1c3p2_canals_2
START /wait !domap.bat a1c3p3_urban
START /wait !domap.bat a1c3p4_garage
START /wait !domap.bat a1c4p1_metro_1
START /wait !domap.bat a1c4p2_metro_2
START /wait !domap.bat a1c4p3_metro_3
START /wait !domap.bat a1c4p4_station
START /wait !domap.bat a1c5p1_outlands
START /wait !domap_minimal_vrad.bat a1c5p2_factory
START /wait !domap_minimal_vrad.bat a1c6p1_pier_1
START /wait !domap_minimal_vrad.bat a1c6p2_pier_2
START /wait !domap.bat a1c6p3_ship
START /wait !domap.bat a2c1p1_alaska
START /wait !domap.bat a2c1p2_distribution_center
START /wait !domap.bat a2c2p1_spotlights
START /wait !domap.bat a2c2p2_factory
START /wait !domap a3c1p1_ship
START /wait !domap a3c1p2_jump
START /wait !domap a3c2p1_ci17_1
START /wait !domap a3c2p2_ci17_2
START /wait !domap a3c2p3_ci17_3
START /wait !domap a3c2p4_boris
START /wait !domap a3c3p1_blackmesaeast
START /wait !domap a3c3p2_ravenholm
START /wait !domap a3c3p3_tunnel
START /wait !domap a3c3p4_streetfight
START /wait !domap a3c4p1_cave
START /wait !domap a3c4p2_badcountry
START /wait !domap a3c5p1_novapro_1
START /wait !domap a3c5p2_novapro_2
START /wait !domap a3c6p1_prison_1
START /wait !domap a3c6p2_prison_2
START /wait !domap a3c7p1_forest
START /wait !domap a3c7p2_outpost
PAUSE