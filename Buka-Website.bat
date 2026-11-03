@echo off
title MYA - Server Lokal
echo ===================================================
echo Membuka Website MYA di Browser...
echo Jangan tutup jendela hitam ini selama melihat website.
echo ===================================================
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1"
