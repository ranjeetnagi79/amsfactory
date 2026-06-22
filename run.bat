@echo off
cd /d "%~dp0"

echo ============================================
echo  AMS Factory Management Application v4.0
echo ============================================
echo.

echo [1/2] Installing / verifying dependencies...
python -m pip install fastapi "uvicorn[standard]" openpyxl python-multipart --quiet
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: pip install failed. Make sure Python 3.10+ is installed.
    pause
    exit /b 1
)
echo Done.
echo.

echo [2/2] Starting server...
echo Open your browser at: http://localhost:8080
echo Press Ctrl+C to stop.
echo.
python app.py
pause
