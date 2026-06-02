@echo off
cd /d D:\Tzu-Hsun_website
echo === START === > push-log.txt

echo Removing lock files... >> push-log.txt
if exist .git\index.lock del /f .git\index.lock 2>nul
if exist .git\HEAD.lock  del /f .git\HEAD.lock  2>nul

echo Fixing branch state... >> push-log.txt
git switch main >> push-log.txt 2>&1
if errorlevel 1 (
  git checkout -B main >> push-log.txt 2>&1
)

echo Untacking helper files... >> push-log.txt
git rm --cached push.bat push-log.txt push-to-github.bat 2>nul >> push-log.txt 2>&1

echo Staging... >> push-log.txt
git add -A >> push-log.txt 2>&1

echo Committing... >> push-log.txt
git commit -m "Update website" >> push-log.txt 2>&1

echo Fetching... >> push-log.txt
git fetch origin >> push-log.txt 2>&1

echo Force pushing... >> push-log.txt
git push --force-with-lease origin main >> push-log.txt 2>&1

echo Exit: %ERRORLEVEL% >> push-log.txt
echo === DONE === >> push-log.txt
type push-log.txt
pause
