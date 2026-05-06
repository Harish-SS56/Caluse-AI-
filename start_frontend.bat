@echo off
title ClauseAI Frontend - Port 3000
echo ============================================================
echo  ClauseAI Frontend - Starting on port 3000
echo ============================================================
echo.

cd /d "%~dp0\frontend"

:restart
echo [%time%] Starting Vite frontend...
npm run dev
echo.
echo [%time%] Frontend stopped. Restarting in 3 seconds...
timeout /t 3 /nobreak >nul
goto restart
