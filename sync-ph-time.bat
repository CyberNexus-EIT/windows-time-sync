@echo off
title Philippine Standard Time - Windows Time Sync
color 02

echo.
echo ==========================================
echo   PHILIPPINE STANDARD TIME SYNC
echo ==========================================
echo.

echo [1/8] Setting Windows timezone to UTC+8...
tzutil /s "Singapore Standard Time"

echo.
echo [2/8] Verifying timezone...
tzutil /g

echo.
echo [3/8] Setting Windows Time service to Automatic...
sc config W32Time start= auto

echo.
echo [4/8] Starting Windows Time service...
net start W32Time

echo.
echo [5/8] Updating Windows Time configuration...
w32tm /config /update

echo.
echo [6/8] Synchronizing Windows clock...
w32tm /resync

echo.
echo [7/8] Verifying Windows Time configuration...
echo.
w32tm /query /configuration

echo.
echo ==========================================
echo   CURRENT TIMEZONE
echo ==========================================
tzutil /g

echo.
echo ==========================================
echo   WINDOWS TIME STATUS
echo ==========================================
w32tm /query /status

echo.
echo ==========================================
echo   CURRENT TIME SOURCE
echo ==========================================
w32tm /query /source

echo.
echo ==========================================
echo   TIME SYNC PROCESS COMPLETE
echo ==========================================
echo.

pause
