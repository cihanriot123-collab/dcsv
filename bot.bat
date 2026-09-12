@echo off
title DCSV 30 Profil Otomasyonu ve Uzaktan Log

cd /d "%~dp0"
set LINK="https://dcsv.me/users/cihante"
set /a SAYAC=0

:: Chrome'un Runner üzerindeki yolu
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME=chrome

:dongu
cls
set /a SAYAC+=1
set /a TOPLAM_ISTEK=SAYAC*30

echo ===================================================
echo             CANLI PROFIL VE ISTEK TAKIP
echo ===================================================
echo [%time%] Tamamlanan Dongu Sayisi: %SAYAC%
echo [%time%] Toplam Atilan Profil Istegi: %TOPLAM_ISTEK%
echo Hedef URL: %LINK%
echo ===================================================
echo.

:: --- 1. PAKET (1 - 5) ---
echo [%time%] Paket 1/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Default" %LINK%
start "" %CHROME% --profile-directory="Profile 1" %LINK%
start "" %CHROME% --profile-directory="Profile 2" %LINK%
start "" %CHROME% --profile-directory="Profile 3" %LINK%
start "" %CHROME% --profile-directory="Profile 4" %LINK%
ping 127.0.0.1 -n 6 >nul

:: --- 2. PAKET (6 - 10) ---
echo [%time%] Paket 2/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 5" %LINK%
start "" %CHROME% --profile-directory="Profile 6" %LINK%
start "" %CHROME% --profile-directory="Profile 7" %LINK%
start "" %CHROME% --profile-directory="Profile 8" %LINK%
start "" %CHROME% --profile-directory="Profile 9" %LINK%
ping 127.0.0.1 -n 6 >nul

:: --- 3. PAKET (11 - 15) ---
echo [%time%] Paket 3/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 10" %LINK%
start "" %CHROME% --profile-directory="Profile 11" %LINK%
start "" %CHROME% --profile-directory="Profile 12" %LINK%
start "" %CHROME% --profile-directory="Profile 13" %LINK%
start "" %CHROME% --profile-directory="Profile 14" %LINK%
ping 127.0.0.1 -n 6 >nul

:: --- 4. PAKET (16 - 20) ---
echo [%time%] Paket 4/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 15" %LINK%
start "" %CHROME% --profile-directory="Profile 16" %LINK%
start "" %CHROME% --profile-directory="Profile 17" %LINK%
start "" %CHROME% --profile-directory="Profile 18" %LINK%
start "" %CHROME% --profile-directory="Profile 19" %LINK%
ping 127.0.0.1 -n 6 >nul

:: --- 5. PAKET (21 - 25) ---
echo [%time%] Paket 5/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 20" %LINK%
start "" %CHROME% --profile-directory="Profile 21" %LINK%
start "" %CHROME% --profile-directory="Profile 22" %LINK%
start "" %CHROME% --profile-directory="Profile 23" %LINK%
start "" %CHROME% --profile-directory="Profile 24" %LINK%
ping 127.0.0.1 -n 6 >nul

:: --- 6. PAKET (26 - 30) ---
echo [%time%] Paket 6/6 aciliyor (5 Pencere)...
start "" %CHROME% --profile-directory="Profile 25" %LINK%
start "" %CHROME% --profile-directory="Profile 26" %LINK%
start "" %CHROME% --profile-directory="Profile 27" %LINK%
start "" %CHROME% --profile-directory="Profile 28" %LINK%
start "" %CHROME% --profile-directory="Profile 29" %LINK%

echo.
echo [%time%] Sayfalarin yuklenmesi bekleniyor (8 saniye)...
ping 127.0.0.1 -n 9 >nul

echo [%time%] Chrome surecleri temizleniyor (RAM bosaltiliyor)...
taskkill /F /IM chrome.exe /T >nul 2>&1

:: --- DIGER CMD EKRANINA CANLI LOG GONDERME ---
echo [%time%] Diger CMD ekranina log gonderiliyor...
curl -s -d "LOG: Dongu #%SAYAC% bitti - Toplam Istek: %TOPLAM_ISTEK%" ntfy.sh/cihan_log_77 >nul 2>&1

echo [%time%] Rate limit engeline takilmamak icin bekleniyor (15 saniye)...
ping 127.0.0.1 -n 16 >nul

goto dongu
