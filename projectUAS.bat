@echo off
title PROJEK UAS BY JOSEPH


:login
cls
echo NAMA      : JOSEPH HADI
echo NIM       : 20122062
echo KELAS     : TI 2 B
echo PRODI     : INFORMATIKA
echo -------------------------------------
echo Selamat datang di Aplikasi Projek UAS
echo -------------------------------------
echo.

set /p username=Masukkan username: 
set /p password=Masukkan password: 

rem username dan password
if "%username%"=="joseph" (
    if "%password%"=="1sampai7" (
        goto menu
    )
)

echo Username atau password salah.
timeout /t 2 >nul
goto login

REM Menu
:menu
cls
echo ____________________________
echo Pilih menu :
echo [1.] APLIKASI SMK
echo [2.] System
echo [3.] Ulasan
echo [4.] Shutdown
echo ____________________________
set /p "mnu=PILIH: "


REM Pemilihan menu
if "%mnu%"=="1" (
    call :smk
) else if "%mnu%"=="2" (
    call :sys
) else if "%mnu%"=="3" (
    call :ulsn
) else if "%mnu%"=="4" (
    call:shtd
) else (
    echo Try Again...
    pause
    goto menu
)

REM Maping Akses Aplikasi SMK
:smk
cls
goto smk
pause

REM Maping Akses System
:sys
cls
goto system
pause

REM Maping Akses Ulasan
:ulsn
cls
goto ulsn
pause


rem aplikasi smk
:smk
cls
echo pilih lah salah satu
echo ____________________________
echo [1] Dapodik
echo [2] e-Rapor
echo [3] Website
echo [404] Back
echo ____________________________

set /p p1=PILIH : 
if %p1% == 1 goto dapo
if %p1% == 2 goto rapor
if %p1% == 3 goto web
if %p1% == 404 goto menu (    
) else (
    echo Try Again...
    set /p io=ENTER...!
    goto smk
)

goto smk

:dapo
cls
start www.dapo.smknubandarbatang.sch.id
pause
goto smk
:rapor
cls
start www.raporsp.smknubandarbatang.sch.id
pause
goto smk
:web 
cls 
start www.smknubandarbatang.sch.id
pause 
goto smk
rem end

rem membuka system
:system
cls
echo pilih lah salah satu
echo ______________________________
echo [1] Control Panel
echo [2] Programs and Features
echo [3] Cek Koneksi Internet
echo [404] Back
echo ______________________________

set /p p2=PILIH: 
if %p2% == 1 goto cp
if %p2% == 2 goto uninstall
if %p2% == 3 goto int
if %p2% == 404 goto menu (    
) else (
    echo Try Again...
    set /p io=ENTER...!
    goto system
)
:cp
cls
start "" control
timeout /t 2 /nobreak >nul
pause
goto system
:uninstall
cls
start "" control appwiz.cpl
pause
goto system
:int
cls
ping www.google.com
pause
goto system
rem end

rem ulasan
:ulsn
cls
echo ################################################
echo SILAHKAN MEMBERI ULASAN DENGAN BIJAK
echo HARUS MENGGUNAKAN [HURUF KAPITAL] !!!!!!!!!!!
echo ################################################
pause
goto ulsn1

:ulsn1
cls
echo 1. Bagimana anda Menanggapi Aplikasi yang saya Buat?
set /p j1=Ulasan: 
    pause 
    goto ulsn2
:ulsn2
cls
echo 2. Anda akan memberi Saya berapa bintang?
echo [A]**    [B]***
echo [C]****  [D]*****

set /p j2=Ulasan: 

    pause 
    goto ulsn3
:ulsn3
cls
echo 3. Apa yang Harus Saya update dari aplikasi ini?
set /p j3=Ulasan: 
    pause 


echo Kolom Ulasan
echo __________________________________________
echo 1. %j1%
if %j2%==A echo 2. ** 
if %j2%==B echo 2. ***
if %j2%==C echo 2. ****
if %j2%==D echo 2. *****
echo 3. %j3%
echo __________________________________________
echo TERIMAKASIH TELAH MEMBERI ULASAN KEPADA SAYA :D
    pause
    goto menu
rem end

rem shutdown
:shtd
cls
echo Pilih menu:
echo [1]. Shutdown
echo [2]. Restart
echo [3]. Log Off
echo [404]. Back
echo.

set /p "pil=PILIH: "

REM Pemilihan menu
if "%pil%"=="1" (
    call:shutdown
) else if "%pil%"=="2" (
    call:restart
) else if "%pil%"=="3" (
    call:logoff
) else if "%pil%"=="404" (
    goto menu
) else (
    echo Try Again...
    pause
    goto shtd
)

REM SHUTDOWN
:shutdown
cls
echo Mematikan komputer Anda...
    shutdown /s /t 0
goto shtd

REM RESTART
:restart
cls
echo Merestart komputer Anda...
    shutdown /r /t 0
goto shtd

REM LOG OFF
:logoff
cls
    echo Log off komputer Anda...
    shutdown /l
goto shtd

REM END

