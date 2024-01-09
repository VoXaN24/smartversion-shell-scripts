@echo off
setlocal enabledelayedexpansion

if not exist "smv.exe" (
    echo "error: Could not find SmartVersion executable (smv.exe) in the current directory."
    exit /b 1
)

if "%1"=="" (
    echo usage: %0 source-file
    exit /b 1
)

set success=0
set error=0

if not exist "%1" (
    echo error: Could not find source file.
    exit /b 1
)

for %%f in (*.*) do (
    if /i "%%f" neq "smv.exe" (
        if /i "%%f" neq "%~nx1" (
            if not exist "%%~nf_to_%~n1.svf" (
                .\smv.exe BuildPatch "%%~nf_to_%~n1.svf" "%~nx1" "%%f" -nbhashbits 24 -compressratio 192 -sha1 -sha256
                if !errorlevel! equ 0 (
                    set /a success+=1
                ) else (
                    set /a error+=1
                )
            )
        )
    )
)

if !error! equ 0 (
    echo success: Successfully patched !success! files.
    exit /b 0
) else (
    echo error: Successfully patched !success! files and encountered !error! errors.
    exit /b 1
)
