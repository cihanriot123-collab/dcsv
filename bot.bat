@echo off
title DCSV 30 Profil Otomasyonu

cd /d "%~dp0"
set LINK="https://dcsv.me/users/cihante"

:: Chrome'un Runner üzerindeki yolu (Eğer yoksa varsayılan komut denenecek)
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME=chrome

:dongu
cls
echo [%time%] === YENI DONGU BASLATILIYOR (30 PROFIL) ===

:: --- 1. PAKET (1 - 5) ---
echo [%time%] Paket 1/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Default" %LINK%
start "" %CHROME% --profile-directory="Profile 1" %LINK%
start "" %CHROME% --profile-directory="Profile 2" %LINK%
start "" %CHROME% --profile-directory="Profile 3" %LINK%
start "" %CHROME% --profile-directory="Profile 4" %LINK%
powershell -Command "Start-Sleep -Seconds 5"

:: --- 2. PAKET (6 - 10) ---
echo [%time%] Paket 2/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 5" %LINK%
start "" %CHROME% --profile-directory="Profile 6" %LINK%
start "" %CHROME% --profile-directory="Profile 7" %LINK%
start "" %CHROME% --profile-directory="Profile 8" %LINK%
start "" %CHROME% --profile-directory="Profile 9" %LINK%
powershell -Command "Start-Sleep -Seconds 5"

:: --- 3. PAKET (11 - 15) ---
echo [%time%] Paket 3/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 10" %LINK%
start "" %CHROME% --profile-directory="Profile 11" %LINK%
start "" %CHROME% --profile-directory="Profile 12" %LINK%
start "" %CHROME% --profile-directory="Profile 13" %LINK%
start "" %CHROME% --profile-directory="Profile 14" %LINK%
powershell -Command "Start-Sleep -Seconds 5"

:: --- 4. PAKET (16 - 20) ---
echo [%time%] Paket 4/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 15" %LINK%
start "" %CHROME% --profile-directory="Profile 16" %LINK%
start "" %CHROME% --profile-directory="Profile 17" %LINK%
start "" %CHROME% --profile-directory="Profile 18" %LINK%
start "" %CHROME% --profile-directory="Profile 19" %LINK%
powershell -Command "Start-Sleep -Seconds 5"

:: --- 5. PAKET (21 - 25) ---
echo [%time%] Paket 5/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 20" %LINK%
start "" %CHROME% --profile-directory="Profile 21" %LINK%
start "" %CHROME% --profile-directory="Profile 22" %LINK%
start "" %CHROME% --profile-directory="Profile 23" %LINK%
start "" %CHROME% --profile-directory="Profile 24" %LINK%
powershell -Command "Start-Sleep -Seconds 5"

:: --- 6. PAKET (26 - 30) ---
echo [%time%] Paket 6/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 25" %LINK%
start "" %CHROME% --profile-directory="Profile 26" %LINK%
start "" %CHROME% --profile-directory="Profile 27" %LINK%
start "" %CHROME% --profile-directory="Profile 28" %LINK%
start "" %CHROME% --profile-directory="Profile 29" %LINK%

echo.
echo [%time%] Sayfalarin yuklenmesi bekleniyor (8 saniye)...
powershell -Command "Start-Sleep -Seconds 8"

echo [%time%] Chrome surecleri temizleniyor (RAM bosaltiliyor)...
taskkill /F /IM chrome.exe /T >nul 2>&1

echo [%time%] Bekleniyor (15 saniye)...
powershell -Command "Start-Sleep -Seconds 15"

goto dongu
