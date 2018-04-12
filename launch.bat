@echo off
goto START
rem set DDKDIR=C:\WinDDK\3790~1.183
rem ::set DDKDIR=C:\WinDDK\760016~1.1
rem call !DDKDIR!\bin\setenv.bat !DDKDIR! fre WNET
rem ::call C:\WinDDK\7600.16385.1\bin\setenv.bat C:\WinDDK\7600.16385.1\ fre x86 WXP
rem pause
rem cd %~dp0
rem rem set LIB=%LIB%;!DDKDIR!\lib\wnet\i386;!DDKDIR!\lib\crt\i386
rem set LIB=%LIB%;!DDKDIR!\lib\win7\i386;!DDKDIR!\lib\Crt\i386;!DDKDIR!\lib\wxp\i386
rem SET INCLUDE=%INCLUDE%;!DDKDIR!\inc\crt

::set DDKDIR=C:\WinDDK\3790~1.183
set DDKDIR=C:\WinDDK\760016~1.1
call !DDKDIR!\bin\setenv.bat !DDKDIR! fre WXP
::call C:\WinDDK\7600.16385.1\bin\setenv.bat C:\WinDDK\7600.16385.1\ fre x86 WXP

:START
cd %~dp0
rem set LIB=%LIB%;!DDKDIR!\lib\wnet\i386;!DDKDIR!\lib\crt\i386
set LIB=%LIB%;!DDKDIR!\lib\win7\i386;!DDKDIR!\lib\Crt\i386;!DDKDIR!\lib\wxp\i386
SET INCLUDE=%INCLUDE%;!DDKDIR!\inc\crt

call edksetup.bat --nt32
set OPENSSL_PATH=%WORKSPACE%\openssl-20170801
set path=%path%;c:\bin;%~dp0CdePkg\tools;C:\PROGRA~2\NASM
echo BUILD:             "build -t VS2015x86"
echo RUN DEBUG BUILD:   "DBG"
echo RUN RELEASE BUILD: "RUN"
set path=%path%;c:\nasm
echo #########################################
echo cd Vlv2TbltDevicePkg
echo Build_IFWI.bat MNW2 Release
echo #########################################
C:\Windows\System32\cmd.exe /NOLOGO /V:ON /k title %~dp0