@echo off
cd /d D:\Tzu-Hsun_website
if exist .git\index.lock del /f .git\index.lock 2>nul
if exist .git\HEAD.lock  del /f .git\HEAD.lock  2>nul
echo === START === > push-log.txt
git add -A >> push-log.txt 2>&1
git commit -m "Update website" >> push-log.txt 2>&1
git pull --rebase origin main >> push-log.txt 2>&1
git push --force-with-lease origin main >> push-log.txt 2>&1
echo Exit: %ERRORLEVEL% >> push-log.txt
echo === DONE === >> push-log.txt
type push-log.txt
pause
