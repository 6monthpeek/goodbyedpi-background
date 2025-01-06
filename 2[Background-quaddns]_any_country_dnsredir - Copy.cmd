@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

REM PowerShell kullanarak pencereyi gizle
powershell -Command "Start-Process -FilePath 'goodbyedpi.exe' -ArgumentList '-5 --dns-addr 9.9.9.9 --dns-port 1253 --dnsv6-addr 2620:fe::fe --dnsv6-port 1253' -WindowStyle Hidden"

POPD
POPD
