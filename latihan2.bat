@echo off
title LATIHAN 2 KOLAB INPUTAN
rem=======================set var========================

set /p nim= masukan NIM      :
set /p nma= masukan Nama     :
set /p kls= masukan Kelas    :
set /p kjr= masukan Jurusan  :

set /p a= nilai A            :
set /p b= nilai B            :
set /p c= nilai C            :
set /p d= nilai D            :
set /p e= nilai E            :
set /p f= nilai F            :
set /p g= nilai G            :
set /p h= nilai H            :
rem ==============================================
set /a hasil1=(a*b)*(c+d)
set /a hasil2=(e/c)+(f*b)
set /a hasil3=h-((f+g)*b)
rem======================================================
echo -------------------------------
echo    INDETITAS DIRI
echo NIM             :%nim%
echo Nama            :%nma%
echo Kelas           :%kls%
echo Kejuruan        :%kjr%
echo -------------------------------
echo HASIL SOAL 1    :%hasil1%
echo HASIL SOAL 2    :%hasil2%
echo HASIL SOAL 2    :%hasil3%
pause