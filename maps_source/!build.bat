@echo off
color 0a
title Build All


ECHO %TIME% downtown 2 started.
START /wait !domap.bat a1c2p2_downtown_2
ECHO.

ECHO %TIME% canal started.
START /wait !domap.bat a1c3p1_canal
ECHO.

ECHO %TIME% ship started.
START /wait !domap.bat a1c5p4_ship
ECHO.

ECHO %TIME% jump started.
START /wait !domap a3c1p2_jump
ECHO.

ECHO %TIME% c17-3 started.
START /wait !domap a3c2p3_ci17-3
ECHO.

ECHO %TIME% BME started.
START /wait !domap a3c3p1_blackmesaeast
ECHO.

ECHO %TIME% highway started.
START /wait !domap a3c5p2_highway
ECHO.

ECHO %TIME% house started.
START /wait !domap a3c8p2_house
ECHO.

ECHO %TIME% outpost started.
START /wait !domap a3c8p2_outpost
ECHO.

ECHO %TIME% credits started.
START /wait !domap credits
ECHO.

ECHO %TIME% Done.
PAUSE