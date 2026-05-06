@echo off
title ClauseAI Backend - Port 5000
echo ============================================================
echo  ClauseAI Backend API - Starting on port 5000
echo ============================================================
echo.

cd /d "%~dp0"

:restart
echo [%time%] Starting Flask backend...
.venv\Scripts\python.exe api_server.py
echo.
echo [%time%] Backend stopped with exit code %errorlevel%. Restarting in 3 seconds...
timeout /t 3 /nobreak >nul
goto restart
