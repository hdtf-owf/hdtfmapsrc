@echo off
color 0a
title Build

START /wait !domap.bat a1c2p2_downtown_2
START /wait !domap.bat a1c3p1_canal
START /wait !domap.bat a1c5p4_ship
START /wait !domap a3c1p2_jump
START /wait !domap a3c2p3_ci17-3
START /wait !domap a3c3p1_blackmesaeast
START /wait !domap a3c5p2_highway
START /wait !domap a3c8p2_outpost
START /wait !domap credits

ECHO DONE
PAUSE