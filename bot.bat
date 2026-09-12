@echo off
title DCSV 30 Profil Otomasyonu

cd /d "%~dp0"
set LINK="https://dcsv.me/users/cihante"

:dongu
cls
echo [%time%] === YENI DONGU BASLATILIYOR (30 PROFIL) ===

:: --- 1. PAKET (1 - 5) ---
echo [%time%] Paket 1/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%
timeout /t 5 /nobreak >nul

:: --- 2. PAKET (6 - 10) ---
echo [%time%] Paket 2/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%
timeout /t 5 /nobreak >nul

:: --- 3. PAKET (11 - 15) ---
echo [%time%] Paket 3/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%
timeout /t 5 /nobreak >nul

:: --- 4. PAKET (16 - 20) ---
echo [%time%] Paket 4/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%
timeout /t 5 /nobreak >nul

:: --- 5. PAKET (21 - 25) ---
echo [%time%] Paket 5/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%
timeout /t 5 /nobreak >nul

:: --- 6. PAKET (26 - 30) ---
echo [%time%] Paket 6/6 aciliyor (5 Pencere)...
start chrome --profile-directory="Default" %LINK%
start chrome --profile-directory="Profile 1" %LINK%
start chrome --profile-directory="Profile 2" %LINK%
start chrome --profile-directory="Profile 3" %LINK%
start chrome --profile-directory="Profile 4" %LINK%

echo.
echo [%time%] Sayfalarin yuklenmesi bekleniyor (8 saniye)...
timeout /t 8 /nobreak >nul

echo [%time%] Chrome surecleri temizleniyor (RAM bosaltiliyor)...
taskkill /F /IM chrome.exe /T >nul 2>&1

echo [%time%] Cloudflare engeline takilmamak icin bekleniyor (15 saniye)...
timeout /t 15 /nobreak >nul

goto dongu