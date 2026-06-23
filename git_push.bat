@echo off
REM ============================================================
REM  OEE Machine Monitor — Git Push to GitHub
REM  แก้ GITHUB_URL ด้านล่างเป็น URL repo ของคุณก่อนรัน
REM ============================================================

set GITHUB_URL=https://github.com/YOUR_USERNAME/oee-machine-monitor.git

echo.
echo [1/4] กำลัง init git repo...
git init

echo.
echo [2/4] กำลัง add ไฟล์ทั้งหมด...
git add .

echo.
echo [3/4] กำลัง commit...
git commit -m "deploy: OEE Machine Monitor Phase 0 - Static Site"

echo.
echo [4/4] กำลัง push ขึ้น GitHub...
git branch -M main
git remote remove origin 2>nul
git remote add origin %GITHUB_URL%
git push -u origin main

echo.
echo ============================================================
echo  เสร็จแล้ว! ไปสร้าง Static Site บน Render ได้เลยค่ะ
echo  https://dashboard.render.com
echo ============================================================
pause
