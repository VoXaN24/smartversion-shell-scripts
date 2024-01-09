@echo off

if not exist "smv.exe" (
    echo error: Could not find SmartVersion executable (smv.exe) in the current directory.
    exit /b 1
)

if "%1"=="" (
    echo usage: %0 source-file target-file
    exit /b 1
)

if "%2"=="" (
    echo usage: %0 source-file target-file
    exit /b 1
)

if not exist "%1" (
    echo error: Could not find source file.
    exit /b 1
)

if not exist "%2" (
    echo error: Could not find target file.
    exit /b 1
)

.\smv.exe BuildPatch "%~dpn2.svf" %1 %2 -nbhashbits 24 -compressratio 192 -sha1 -sha256

if %errorlevel% neq 0 (
    echo error: Could not patch files.
    exit /b 1
)

echo success: Successfully patched files.
exit /b 0
