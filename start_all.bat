@echo off
title ClauseAI - Starting All Services
echo ============================================================
echo  ClauseAI - AI Legal Contract Analyzer
echo  Starting all services...
echo ============================================================
echo.

cd /d "%~dp0"

echo [1/2] Starting Backend (Flask on port 5000)...
start "ClauseAI Backend" cmd /k "title ClauseAI Backend && cd /d %~dp0 && :loop && .venv\Scripts\python.exe api_server.py && timeout /t 3 /nobreak >nul && goto loop"

echo [2/2] Starting Frontend (Vite on port 3000)...
start "ClauseAI Frontend" cmd /k "title ClauseAI Frontend && cd /d %~dp0\frontend && :loop && npm run dev && timeout /t 3 /nobreak >nul && goto loop"

echo.
echo ============================================================
echo  Both services started in separate windows!
echo  Backend:  http://localhost:5000
echo  Frontend: http://localhost:3000
echo ============================================================
echo.
echo Opening browser in 5 seconds...
timeout /t 5 /nobreak >nul
start http://localhost:3000
