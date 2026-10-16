@echo off
title Uploading Adil Overseas Shortcuts to GitHub
color 0B
echo.
echo =========================================================
echo    Uploading all files (including src/) to GitHub...
echo =========================================================
echo.
cd /d "d:\Softwears\shortuct"

git push -u origin main --force

echo.
echo =========================================================
echo   Done! Vercel will now automatically build and deploy!
echo =========================================================
echo.
pause
