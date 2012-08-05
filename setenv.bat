@ECHO OFF

REM *** LOCAL TARGET PATHS and FILES
IF [%RELEASE%]==[] SET RELEASE=%1
IF [%RELEASE%]==[] SET RELEASE=2.6.6a
IF [%PULLED%]==[]  SET PULLED=%CD%\pulled
IF [%DEST%]==[]    SET DEST=%CD%\cooked\%RELEASE%
if [%TEST%]==[]    SET TEST=%CD%\test\index.html
if NOT [%2]==[]    SET TEST=%CD%\test\index.%2.html
if [%TW5%]==[]     SET TW5=..\..\..\jermolene\tiddlywiki5\core\boot.js

REM *** LOCAL UTILITY APPLICATIONS

REM *** CURL (for PULL.BAT)
REM http://curl.haxx.se/download.html
SET CURL="C:\Program Files\Curl\curl.exe"

REM *** FILE COMPARISON (for TEST.BAT)
REM *** SELECT ONE OF THE FOLLOWING, OR INSTALL/CONFIGURE YOUR OWN PREFERRED PROGRAM
REM http://www.grigsoft.com/download-windiff.htm
REM SET DIFF="C:\Program Files\WinDiff\WinDiff.exe"
REM http://www.prestosoft.com/edp_examdiff.asp
SET DIFF="C:\Program Files\ExamDiff\ExamDiff.exe"