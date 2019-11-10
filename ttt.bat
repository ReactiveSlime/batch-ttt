@echo off
cls
set TL=A
set TM=A
set TR=A
set ML=A
set MM=A
set MR=A
set BL=A
set BM=A
set BR=A

echo Slots with A is an open slot
echo X goes first
echo.
echo Placement Names
echo ^|--^|--^|--^|
echo ^|TL^|TM^|TR^|
echo ^|--^|--^|--^|
echo ^|ML^|MM^|MR^|
echo ^|--^|--^|--^|
echo ^|BL^|BM^|BR^|
echo ^|--^|--^|--^|
echo.

call :display

:choose
set /p choose_x="Place Your Piece: "
if /i "%choose_x%" == "TL" goto XTL
if /i "%choose_x%" == "TM" goto XTM
if /i "%choose_x%" == "TR" goto XTR
if /i "%choose_x%" == "ML" goto XML
if /i "%choose_x%" == "MM" goto XMM
if /i "%choose_x%" == "MR" goto XMR
if /i "%choose_x%" == "BL" goto XBL
if /i "%choose_x%" == "BM" goto XBM
if /i "%choose_x%" == "BR" goto XBR
echo Invalid Option
goto choose

:XTL
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XTM
cls

if "TM" NEQ "A" echo Inalid Move. TM Is Used
set TM=X

:XTR
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XML
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XMM
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XMR
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XBL
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XBM
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X


:XBR
cls

if "TL" NEQ "A" echo Inalid Move. TL Is Used
set TL=X

:display
echo The board
echo ^|-^|-^|-^|
echo ^|%TL%^|%TM%^|%TR%^|
echo ^|-^|-^|-^|
echo ^|%ML%^|%MM%^|%MR%^|
echo ^|-^|-^|-^|
echo ^|%BL%^|%BM%^|%BR%^|
echo ^|-^|-^|-^|
goto :EOF