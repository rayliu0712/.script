@echo off
setlocal

if "%~1"=="" (
  exit /b 1
)

if exist "%~1" (
  explorer /select,"%~f1"
  exit /b 0
)

set "found="
for /f "usebackq delims=" %%i in (`where "%~1" 2^>nul`) do (
  set "found=1"
  explorer /select,"%%i"
)

if not defined found (
  exit /b 1
)
