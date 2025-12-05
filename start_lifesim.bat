@echo off
cd /d "%~dp0"

echo Starting LifeSim...

start "" cmd /k "call venv\Scripts\activate.bat && python app.py"

timeout /t 2 > nul

start "" "http://127.0.0.1:5000"
