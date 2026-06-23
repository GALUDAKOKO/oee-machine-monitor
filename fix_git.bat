@echo off
cd /d "%~dp0"
echo === Git Fix: Re-init from OEE_Forms root ===
echo Current directory: %CD%
echo.

echo [1/7] Remove old .git if exists...
if exist ".git" (
    rmdir /s /q ".git"
    echo   Done - removed old .git
) else (
    echo   No .git found here, continuing...
)

echo [2/7] git init
git init

echo [3/7] git add all files
git add .

echo [4/7] git commit
git commit -m "deploy: OEE Machine Monitor Phase 0 - correct structure"

echo [5/7] git branch -M main
git branch -M main

echo [6/7] git remote add origin
git remote add origin https://github.com/GALUDAKOKO/oee-machine-monitor.git

echo [7/7] git push --force
git push --force origin main

echo.
echo === Done! Check GitHub repo for correct file structure ===
pause
