@echo off
echo Extracting all SVF patches...
echo -----------------------------
echo.
@for %%i in (*.svf) do smv x %%i -br .
