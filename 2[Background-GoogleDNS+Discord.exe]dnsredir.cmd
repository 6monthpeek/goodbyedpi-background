@echo off
cd /d "C:\goodbyedpi-0.2.3rc3-2\x86_64"

:: Kill Discord if running
taskkill /f /im Discord.exe >nul 2>&1

:: Kill GoodbyeDPI if running
taskkill /f /im goodbyedpi.exe >nul 2>&1
taskkill /f /im goodbyedpi-rawsocket.exe >nul 2>&1

:: Wait for processes to close
timeout /t 2 /nobreak >nul

:: Start GoodbyeDPI silently in background
powershell -WindowStyle Hidden -Command "Start-Process 'goodbyedpi.exe' -ArgumentList '-5','--dns-addr','8.8.8.8','--dns-port','53','--dnsv6-addr','2001:4860:4860::8888','--dnsv6-port','53' -WindowStyle Hidden"

:: Start Discord manually by finding the latest version folder
for /d %%G in ("%LocalAppData%\Discord\app-*") do (
    if exist "%%G\Discord.exe" (
        start "" "%%G\Discord.exe"
        goto done
    )
)
:done

exit
