@echo off
REM Check if commit message is provided
IF "%~1"=="" (
    echo Usage: push_to_github.bat "Your commit message"
    exit /b 1
)

REM Navigate to your repository folder (optional)
REM cd C:\path\to\your\repo

REM Add all changes
git add .

REM Commit with the input message
git commit -m "%~1"

REM Push to master branch
git push origin master

echo Done!
pause
