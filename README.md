# GoodbyeDPI Background Process

![image](https://github.com/user-attachments/assets/d6f641eb-dd2f-49cb-b572-e325642a1c15)


This project provides a simple and effective solution to run [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI) in the background with a hidden window. The provided batch script leverages PowerShell to execute GoodbyeDPI silently, avoiding unnecessary command prompt windows while maintaining functionality.

## Features
- **Runs GoodbyeDPI Silently**: The script ensures that the GoodbyeDPI process runs in the background without displaying a command prompt window.
- **Automated Architecture Detection**: Automatically detects your system's architecture (x86 or x64) and runs the appropriate version of GoodbyeDPI.
- **Customizable DNS Parameters**: Easily modify DNS settings for your use case.

## How It Works
The script uses a combination of batch scripting and PowerShell to:
1. Identify the system architecture (x86 or x64).
2. Navigate to the appropriate directory containing GoodbyeDPI.
3. Execute GoodbyeDPI with the specified parameters using PowerShell's `Start-Process` command in hidden mode.

## Usage

### Prerequisites
- Download the latest release of [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI).
- Place the `goodbyedpi.exe` file in the appropriate architecture folder (`x86` or `x86_64`) within the script's directory.

### Steps to Run
1. Clone or download this repository.
2. Navigate to the directory containing the `run_goodbyedpi.bat` script.
3. Double-click on the script to execute it.

### Script Parameters
By default, the script runs GoodbyeDPI with the following parameters:
```text
-5 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253
```
You can customize these parameters by editing the batch script.

## Script Example
```batch
@ECHO OFF
PUSHD "%~dp0"
set _arch=x86
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set _arch=x86_64)
IF DEFINED PROCESSOR_ARCHITEW6432 (set _arch=x86_64)
PUSHD "%_arch%"

REM PowerShell kullanarak pencereyi gizle
powershell -Command "Start-Process 'goodbyedpi.exe' '-5 --dns-addr 77.88.8.8 --dns-port 1253 --dnsv6-addr 2a02:6b8::feed:0ff --dnsv6-port 1253' -WindowStyle Hidden"

POPD
POPD
```

## Acknowledgments
- **GoodbyeDPI**: This script is based on [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI), a tool to bypass DPI-based censorship methods.
- Special thanks to the original creator, [ValdikSS](https://github.com/ValdikSS), for developing and maintaining GoodbyeDPI.

## License
This script is provided under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to contribute or suggest improvements to this project!




# GoodbyeDPI Arka Planda Kullanma | Terminal Penceresi Gözükmez
![Türk Bayrağı](https://github.com/user-attachments/assets/f7010ffa-56f3-4bd0-8fee-a61c94b89181) <img src="https://github.com/user-attachments/assets/f7010ffa-56f3-4bd0-8fee-a61c94b89181" width="30" height="20"> 

Bu proje, [GoodbyeDPI](https://github.com/ValdikSS/GoodbyeDPI)'yi arka planda gizli bir pencerede çalıştırmak için bir launcher sağlar. Sağlanan betik, GoodbyeDPI'yi komut istemi penceresi olmadan sessiz bir şekilde çalıştırmak için PowerShell kullanır. Bu sayede, DPI tabanlı sansürleri aşarken herhangi bir komut penceresi görüntülenmez.

## Özellikler
- **GoodbyeDPI'yi Sessiz Çalıştırma**: Betik, GoodbyeDPI'yi komut istemi penceresi göstermeden arka planda çalıştırır.
- **Otomatik Mimari Tespiti**: Sistem mimarisini (x86 veya x64) otomatik olarak tespit eder ve uygun GoodbyeDPI sürümünü çalıştırır.
- **Özelleştirilebilir DNS Parametreleri**: DNS ayarlarını ihtiyacınıza göre kolayca değiştirebilirsiniz.

## Nasıl Çalışır
Betiğin, GoodbyeDPI'yi sessizce çalıştırmak için batch betiği ve PowerShell kombinasyonu kullanılır:
1. Sistem mimarisini (x86 veya x64) tespit eder.
2. GoodbyeDPI'nin bulunduğu uygun dizine geçer.
3. PowerShell'in `Start-Process` komutunu kullanarak GoodbyeDPI'yi belirtilen parametrelerle gizli modda çalıştırır.

## Kullanım
- Goodbyedpi indirdikten sonra github'a yüklemiş olduğum bat dosyasını goodbyedpi'ın dosya konumuna atıp çalıştırın.
- Kapatmak isterseniz görev yöneticisinden bulup kapatabilirsiniz.
![image](https://github.com/user-attachments/assets/05f6c053-70d1-43ab-af0b-4f0074bcd8aa)


