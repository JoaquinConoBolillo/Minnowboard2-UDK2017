@echo off
goto START

:START
cd %~dp0
rem set LIB=%LIB%;!DDKDIR!\lib\wnet\i386;!DDKDIR!\lib\crt\i386
set LIB=%LIB%;!DDKDIR!\lib\win7\i386;!DDKDIR!\lib\Crt\i386;!DDKDIR!\lib\wxp\i386
SET INCLUDE=%INCLUDE%;!DDKDIR!\inc\crt

call edksetup.bat --nt32
set OPENSSL_PATH=%WORKSPACE%\openssl-20170801
set path=%path%;c:\bin;%~dp0CdePkg\tools;C:\PROGRA~2\NASM
rem allow build by VS2015 only
set VS110COMNTOOLS=
set VS120COMNTOOLS=
echo BUILD:             "build -t VS2015x86"
echo RUN DEBUG BUILD:   "DBG"
echo RUN RELEASE BUILD: "RUN"
set path=%path%;c:\nasm
echo #########################################
echo cd Vlv2TbltDevicePkg
echo Build_IFWI.bat MNW2 Release
echo #########################################
C:\Windows\System32\cmd.exe /NOLOGO /V:ON /k title %~dp0