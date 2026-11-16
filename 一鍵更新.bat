@echo off
cd /d "%~dp0"
if not exist .git git init
git branch -M main
git config user.name "fyhj08020711-lu"
git config user.email "fyhj08020711-lu@users.noreply.github.com"
git remote set-url origin https://github.com/fyhj08020711-lu/parking-finder.git || git remote add origin https://github.com/fyhj08020711-lu/parking-finder.git
git fetch origin main
git reset --soft origin/main
git add -A
git commit -m "update"
git push -u origin main
echo.
echo Done. Site: https://fyhj08020711-lu.github.io/parking-finder/
pause
