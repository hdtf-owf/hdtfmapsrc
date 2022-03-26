@echo off
color 0a
title Build Act 1

ECHO %TIME% Bootcamp started.
start /wait !domap.bat a0c0p0_bootcamp_m3sa

ECHO %TIME% Bootcamp started.
start /wait !domap.bat a0c0p0_bootcamp

ECHO %TIME% Blackmesa started.
start /wait !domap.bat a0c0p1_blackmesa

ECHO %TIME% hospital halls started.
start /wait !domap.bat a1c1p1_hospital_1

ECHO %TIME% hospital ground floor started.
start /wait !domap.bat a1c1p2_hospital_2

ECHO %TIME% downtown 1 started.
start /wait !domap.bat a1c2p1_downtown_1

ECHO %TIME% downtown 2 started.
start /wait !domap.bat a1c2p2_downtown_2

ECHO %TIME% office started.
start /wait !domap.bat a1c2p3_office

ECHO %TIME% canal started.
start /wait !domap.bat a1c3p1_canal

ECHO %TIME% urban started.
start /wait !domap.bat a1c3p2_urban

ECHO %TIME% metro 1 started.
start /wait !domap.bat a1c3p3_metro_1

ECHO %TIME% metro 2 started.
start /wait !domap.bat a1c3p4_metro_2

ECHO %TIME% metro 3 started.
start /wait !domap.bat a1c3p5_metro_3

ECHO %TIME% station started.
start /wait !domap.bat a1c3p6_station

ECHO %TIME% mesa started.
start /wait !domap.bat a1c4p2_mesa

ECHO %TIME% outlands 1 started.
start /wait !domap.bat a1c4p3_outlands_1

ECHO %TIME% factory/plant started.
start /wait !domap.bat a1c4p4_factory
`
ECHO %TIME% outlands cont. started.
start /wait !domap_fast_vvis.bat a1c4p5_outlands_2

ECHO %TIME% pier 1 started.
start /wait !domap_minimal_vrad.bat a1c5p1_pier_1

ECHO %TIME% pier 2 started.
start /wait !domap_minimal_vrad.bat a1c5p2_pier_2

start /wait !domap.bat a1c5p4_ship
ECHO %TIME% ship started.

ECHO %TIME% Done.
pause