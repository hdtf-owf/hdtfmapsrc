@echo off
color 0a
title Build All

ECHO /////////////////////////////////////////////////////////////
ECHO ----------------------------ACT 1----------------------------
ECHO /////////////////////////////////////////////////////////////
ECHO.
ECHO %TIME% ACT 1 started.
ECHO.
ECHO %TIME% Bootcamp started.
START /wait !domap.bat a0c0p0_bootcamp
REM START /wait !domap.bat a0c0p0_bootcamp_m3sa
ECHO.
ECHO %TIME% Blackmesa started.
START /wait !domap.bat a0c0p1_blackmesa
ECHO.
ECHO %TIME% hospital halls started.
START /wait !domap.bat a1c1p1_hospital_1
ECHO.
ECHO %TIME% hospital ground floor started.
START /wait !domap.bat a1c1p2_hospital_2
ECHO.
ECHO %TIME% downtown 1 started.
START /wait !domap.bat a1c2p1_downtown_1
ECHO.
ECHO %TIME% downtown 2 started.
START /wait !domap.bat a1c2p2_downtown_2
ECHO.
ECHO %TIME% office started.
START /wait !domap.bat a1c2p3_office
ECHO.
ECHO %TIME% canal started.
START /wait !domap.bat a1c3p1_canal
ECHO.
ECHO %TIME% canal_2 started.
START /wait !domap.bat a1c3p1_canal_2
ECHO.
ECHO %TIME% urban started.
START /wait !domap.bat a1c3p2_urban
ECHO.
ECHO %TIME% metro 1 started.
START /wait !domap.bat a1c3p3_metro_1
ECHO.
ECHO %TIME% metro 1a started.
START /wait !domap.bat a1c3p3_metro_1a
ECHO.
ECHO %TIME% metro 2 started.
START /wait !domap.bat a1c3p4_metro_2
ECHO.
ECHO %TIME% metro 3 started.
START /wait !domap.bat a1c3p5_metro_3
ECHO.
ECHO %TIME% station started.
START /wait !domap.bat a1c3p6_station
ECHO.
ECHO %TIME% mesa started.
START /wait !domap.bat a1c4p2_mesa
ECHO.
ECHO %TIME% outlands 1 started.
START /wait !domap.bat a1c4p3_outlands_1
ECHO.
ECHO %TIME% factory/plant started.
START /wait !domap.bat a1c4p4_factory
REM ECHO.
REM ECHO %TIME% outlands cont. started.
REM START /wait !domap.bat a1c4p5_outlands_2
ECHO.
ECHO %TIME% pier 1 started.
ECHO //////////////////////////////////////////////////
ECHO ///////////////////FAST COMPILE///////////////////
ECHO //////////////////////////////////////////////////
START /wait !domap_minimal_vrad.bat a1c5p1_pier_1
ECHO.
ECHO %TIME% pier 2 started.
ECHO //////////////////////////////////////////////////
ECHO ///////////////////FAST COMPILE///////////////////
ECHO //////////////////////////////////////////////////
START /wait !domap_minimal_vrad.bat a1c5p2_pier_2
ECHO.
START /wait !domap.bat a1c5p4_ship
ECHO %TIME% ship started.
ECHO.
ECHO %TIME% ACT 1 finished.
ECHO.
ECHO /////////////////////////////////////////////////////////////
ECHO ----------------------------ACT 2----------------------------
ECHO /////////////////////////////////////////////////////////////
ECHO.
ECHO %TIME% ACT 2 started.
ECHO.
ECHO %TIME% Alaska started.
START /wait !domap.bat a2c1p1_alaska
ECHO.
ECHO %TIME% Distro Center started.
START /wait !domap.bat a2c1p4_distribution_center
ECHO.
ECHO %TIME% Lasers started.
START /wait !domap.bat a2c2p1_lasers
ECHO.
ECHO %TIME% Factory started.
START /wait !domap.bat a2c2p2_factory
ECHO.
ECHO %TIME% ACT 2 finished.
ECHO.
ECHO /////////////////////////////////////////////////////////////
ECHO ----------------------------ACT 3----------------------------
ECHO /////////////////////////////////////////////////////////////
ECHO.
ECHO %TIME% ACT 3 started.
ECHO.
ECHO %TIME% ship started.
START /wait !domap a3c1p1_ship
ECHO.
ECHO %TIME% jump started.
START /wait !domap a3c1p2_jump
ECHO.
ECHO %TIME% c17-1 started.
START /wait !domap a3c2p1_ci17-1
ECHO.
ECHO %TIME% c17-2 started.
START /wait !domap a3c2p2_ci17-2
ECHO.
ECHO %TIME% c17-3 started.
START /wait !domap a3c2p3_ci17-3
ECHO.
ECHO %TIME% boris started.
START /wait !domap a3c2p4_boris
ECHO.
ECHO %TIME% BME started.
START /wait !domap a3c3p1_blackmesaeast
ECHO.
ECHO %TIME% ravenholm started.
START /wait !domap a3c3p2_ravenholm
ECHO.
ECHO %TIME% tunnel started.
START /wait !domap a3c3p3_tunnel
ECHO.
ECHO %TIME% street fight started.
START /wait !domap a3c3p4_streetfight
ECHO.
ECHO %TIME% cave started.
START /wait !domap a3c4p1_cave
ECHO.
ECHO %TIME% bad country started.
START /wait !domap a3c5p1_badcountry
ECHO.
REM ECHO %TIME% highway started.
REM START /wait !domap a3c5p2_highway
REM ECHO.
ECHO %TIME% nova pro started.
START /wait !domap a3c6p1_novapro
ECHO.
REM ECHO %TIME% nova pro started.
REM START /wait !domap a3c6p2_novapro
REM ECHO.
ECHO %TIME% nova pro started.
START /wait !domap a3c6p3_novapro
ECHO.
ECHO %TIME% prison 1 started.
START /wait !domap a3c7p1_prison_1
ECHO.
ECHO %TIME% prison 2 started.
START /wait !domap a3c7p2_prison_2
ECHO.
ECHO %TIME% forest started.
START /wait !domap a3c8p1_forest
ECHO.
ECHO %TIME% outpost started.
START /wait !domap a3c8p2_outpost
ECHO.
REM ECHO %TIME% house started.
REM START /wait !domap a3c8p2_house
REM ECHO.
ECHO %TIME% credits started.
START /wait !domap credits
ECHO.
ECHO %TIME% ACT 3 Finished.
REM ECHO.
REM START /wait !domap dev_coop_blackmesaeast
REM START /wait !domap dev_cubemaps
REM START /wait !domap dev_killhouse
REM START /wait !domap dev_shooting_range
REM START /wait !domap dev_ending
REM START /wait !domap dev_WATERTEST
REM START /wait !domap hdtf_orphanage
REM ECHO.
REM ECHO.
ECHO %TIME% Done.
PAUSE