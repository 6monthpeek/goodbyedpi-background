@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

REM GoodbyeDPI'yi Cloudflare DNS ile çalıştır
powershell -Command "Start-Process 'goodbyedpi.exe' '-5 --dns-addr 8.8.8.8 --dns-port 53 --dnsv6-addr 2606:4700:4700::1111 --dnsv6-port 53' -WindowStyle Hidden"

POPD
POPD
