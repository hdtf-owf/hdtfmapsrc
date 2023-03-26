@echo off
color 0a
title Build

START /wait !domap.bat a3c6p3_novapro

START /wait !domap_minimal_vrad.bat a3c2p1_ci17-1
START /wait !domap_minimal_vrad.bat a3c2p2_ci17-2
START /wait !domap_minimal_vrad.bat a3c2p3_ci17-3

ECHO DONE
PAUSE