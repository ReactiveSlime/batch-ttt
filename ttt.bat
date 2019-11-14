@ECHO off
CLS

REM gets latest version
ECHO Getting Latest Version
CURL -o ttt.bat "https://raw.githubusercontent.com/ReactiveSlime/batch-ttt/master/ttt.bat?_=%random%" -L

REM check if latest version is downloaded
CLS

IF NOT EXIST version.txt (
ECHO|set /p="0">Version.txt
)
SET CURREMT_BUILD=1
SET /p BUILD=<version.txt
IF %BUILD% EQU %CURREMT_BUILD% (
GOTO SETUP
) ELSE (
ECHO|set /p="1">Version.txt
CALL UPDATE
PAUSE
)

:SETUP
SETLOCAL enableDelayedExpansion
SET A1=1
SET A2=2
SET A3=3
SET A4=4
SET A5=5
SET A6=6
SET A7=7
SET A8=8
SET A9=9



CALL :display
REM X Controlls
:XCHOOSE
SET /p CHOOSE_X="Place Your Piece (X): "
IF /i "%CHOOSE_X%" == "9" GOTO X9
IF /i "%CHOOSE_X%" == "8" GOTO X8
IF /i "%CHOOSE_X%" == "7" GOTO X7
IF /i "%CHOOSE_X%" == "6" GOTO X6
IF /i "%CHOOSE_X%" == "5" GOTO X5
IF /i "%CHOOSE_X%" == "4" GOTO X4
IF /i "%CHOOSE_X%" == "3" GOTO X3
IF /i "%CHOOSE_X%" == "2" GOTO X2
IF /i "%CHOOSE_X%" == "1" GOTO X1
IF /i "%CHOOSE_X%" == "Q" EXIT
ECHO Invalid Option
GOTO XCHOOSE

:X1
CLS
IF "%A1%" NEQ "1" (
ECHO Invalid Move. 1 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A1=X
CALL :DISPLAY
REM ECHO !A1!
GOTO OCHOOSE
)

:X2
CLS
IF "%A2%" NEQ "2" (
ECHO Invalid Move. TM Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A2=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X3
CLS
IF "%A3%" NEQ "3" (
ECHO Invalid Move. 3 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A3=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X4
CLS
IF "%A4%" NEQ "4" (
ECHO Invalid Move. ML Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A4=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X5
CLS
IF "%A5%" NEQ "5" (
ECHO Invalid Move. 5 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A5=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X6
CLS
IF "%A6%" NEQ "6" (
ECHO Invalid Move. 6 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A6=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X7
CLS
IF "%A7%" NEQ "7" (
ECHO Invalid Move. 7 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A7=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X8
CLS
IF "%A8%" NEQ "8" (
ECHO Invalid Move. 8 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A8=X
CALL :DISPLAY
GOTO OCHOOSE
)

:X9
CLS
IF "%A9%" NEQ "9" (
ECHO Invalid Move. 9 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO XCHOOSE
) ELSE (
SET A9=X
CALL :DISPLAY
GOTO OCHOOSE
)

REM O Controlls

:OCHOOSE
SET /p CHOOSE_O="Place Your Piece (O): "
IF /i "%CHOOSE_O%" == "9" GOTO O9
IF /i "%CHOOSE_O%" == "8" GOTO O8
IF /i "%CHOOSE_O%" == "7" GOTO O7
IF /i "%CHOOSE_O%" == "6" GOTO O6
IF /i "%CHOOSE_O%" == "5" GOTO O5
IF /i "%CHOOSE_O%" == "4" GOTO O4
IF /i "%CHOOSE_O%" == "3" GOTO O3
IF /i "%CHOOSE_O%" == "2" GOTO O2
IF /i "%CHOOSE_O%" == "1" GOTO O1
IF /i "%CHOOSE_O%" == "Q" EXIT
ECHO Invalid Option
GOTO choose

:O1
CLS
IF "%A1%" NEQ "1" (
ECHO Invalid Move. 1 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A1=O
CALL :DISPLAY
REM ECHO !TL!
GOTO XCHOOSE
)

:O2
CLS
IF "%A2%" NEQ "2" (
ECHO Invalid Move. 2 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A2=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O3
CLS
IF "%A3%" NEQ "3" (
ECHO Invalid Move. 3 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A3=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O4
CLS
IF "%A4%" NEQ "4" (
ECHO Invalid Move. 4 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A4=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O5
CLS
IF "%A5%" NEQ "5" (
ECHO Invalid Move. MM Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A5=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O6
CLS
IF "%A6%" NEQ "6" (
ECHO Invalid Move. 6 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A6=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O7
CLS
IF "%A7%" NEQ "7" (
ECHO Invalid Move. 7 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A7=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O8
CLS
IF "%A8%" NEQ "8" (
ECHO Invalid Move. 8 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A8=O
CALL :DISPLAY
GOTO XCHOOSE
)

:O9
CLS
IF "%A9%" NEQ "9" (
ECHO Invalid Move. 9 Is Used
PAUSE
CLS
CALL :DISPLAY
GOTO OCHOOSE
) ELSE (
SET A9=O
CALL :DISPLAY
GOTO XCHOOSE
)

:DISPLAY
ECHO Press Q then enter to exit anytime
ECHO The board
ECHO +-----------+
ECHO ^|   ^|   ^|   ^|
ECHO ^| %A7% ^| %A8% ^| %A9% ^|
ECHO ^|   ^|   ^|   ^|
ECHO ^|---^|---^|---^|
ECHO ^|   ^|   ^|   ^|
ECHO ^| %A4% ^| %A5% ^| %A6% ^|
ECHO ^|   ^|   ^|   ^|
ECHO ^|---^|---^|---^|
ECHO ^|   ^|   ^|   ^|
ECHO ^| %A1% ^| %A2% ^| %A3% ^|
ECHO ^|   ^|   ^|   ^|
ECHO +-----------+ 
ECHO.
GOTO :EOF

:UPDATE
ECHO -----UPDATE 1-----
ECHO.
ECHO Added Auto Update
ECHO Re-designed The Board
ECHO Fixed Typos
goto :OEF
