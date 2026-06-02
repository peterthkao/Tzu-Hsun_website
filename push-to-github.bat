@echo off
echo === Pushing website to GitHub ===
cd /d "%~dp0"
echo Directory: %CD%

REM Delete the broken .git folder entirely and start fresh
echo Removing old .git folder...
rmdir /s /q ".git"

REM Now initialize fresh
echo Initializing fresh git repo...
git init
if errorlevel 1 (
    echo ERROR: git init failed. Is Git installed?
    pause
    exit /b 1
)

git config user.email "ken126ken126@gmail.com"
git config user.name "Tzu-Hsun Kao"
git remote add origin https://github.com/peterthkao/Tzu-Hsun_website.git

REM Stage all files
git add .

REM Commit
git commit -m "Initial website upload"

REM Push to main branch
git branch -M main
git push -u origin main

echo.
echo === Done! ===
echo If prompted for credentials, enter your GitHub username and a Personal Access Token.
echo Generate a token at: https://github.com/settings/tokens  (select 'repo' scope)
pause
