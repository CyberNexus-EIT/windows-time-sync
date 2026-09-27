@echo off
title Philippine Standard Time - Windows Time Sync

echo.
echo ==========================================
echo   PHILIPPINE STANDARD TIME SYNC
echo ==========================================
echo.

echo [1/7] Setting Windows timezone to UTC+8...
tzutil /s "Singapore Standard Time"

echo.
echo [2/7] Verifying timezone...
tzutil /g

echo.
echo [3/7] Setting Windows Time service to Automatic...
sc config W32Time start= auto

echo.
echo [4/7] Starting Windows Time service...
net start W32Time

echo.
echo [5/7] Updating Windows Time configuration...
w32tm /config /update

echo.
echo [6/7] Synchronizing Windows clock...
w32tm /resync

echo.
echo [7/7] Verifying Windows Time status...
echo.
w32tm /query /status

echo.
echo ==========================================
echo   CURRENT TIME SOURCE
echo ==========================================
w32tm /query /source

echo.
echo ==========================================
echo   FINAL TIMEZONE
echo ==========================================
tzutil /g

echo.
echo ==========================================
echo   TIME SYNC PROCESS COMPLETE
echo ==========================================
echo.

pause

