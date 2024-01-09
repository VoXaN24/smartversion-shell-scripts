@echo off
if "%1"=="" (
    echo Usage: %0 <filename.svf>
    exit /b 1
)

set "input_file=%1"

echo Extracting SVF patches from %input_file%...
echo -----------------------------------------
echo.

smv x %input_file% -br .
