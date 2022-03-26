@echo off
color 0a
title Build Act 3
ECHO %TIME% ship started.
start /wait !domap a3c1p1_ship
REM ship
ECHO %TIME% jump started.
start /wait !domap a3c1p2_jump
REM jump
ECHO %TIME% c17-1 started.
start /wait !domap a3c2p1_ci17-1
REM c17-1
ECHO %TIME% c17-2 started.
start /wait !domap a3c2p2_ci17-2
REM c17-2
ECHO %TIME% c17-3 started.
start /wait !domap a3c2p3_ci17-3
REM c17-3
ECHO %TIME% boris started.
start /wait !domap a3c2p4_boris
REM boris
ECHO %TIME% BME started.
start /wait !domap a3c3p1_blackmesaeast
REM BME
ECHO %TIME% ravenholm started.
start /wait !domap a3c3p2_ravenholm
REM ravenholm
ECHO %TIME% tunnel started.
start /wait !domap a3c3p3_tunnel
REM tunnel
ECHO %TIME% street fight started.
start /wait !domap a3c3p4_streetfight
REM street fight
ECHO %TIME% cave started.
start /wait !domap a3c4p1_cave
REM cave
REM ECHO %TIME% cut level started.
REM start /wait !domap a3c4p2
REM cut level
REM ECHO %TIME% cut level started.
REM start /wait !domap a3c4p3
REM cut level
ECHO %TIME% bad country started.
start /wait !domap a3c5p1_badcountry
REM bad country
ECHO %TIME% highway started.
start /wait !domap a3c5p2_highway
REM highway
ECHO %TIME% nova pro started.
start /wait !domap a3c6p1_novapro
REM nova pro
ECHO %TIME% nova pro started.
start /wait !domap a3c6p2_novapro
REM nova pro
ECHO %TIME% nova pro started.
start /wait !domap a3c6p3_novapro
REM nova pro
ECHO %TIME% prison 1 started.
start /wait !domap a3c7p1_prison_1
REM prison 1
ECHO %TIME% prison 2 started.
start /wait !domap a3c7p2_prison_2
REM prison 2
ECHO %TIME% forest started.
start /wait !domap a3c8p1_forest
REM forest
ECHO %TIME% house started.
start /wait !domap a3c8p2_house
start /wait !domap a3c8p2_outpost
start /wait !domap credits
REM house
ECHO %TIME% compile completed.
ECHO Compile Completed.
pause