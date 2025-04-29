@echo off
setlocal
::This command ensures that any changes to environment variables are local to the script. After the script finishes, these changes won’t affect the global environment.
:: Set your source and destination paths
set "SOURCE_DIR=C:\Users\sys.admin\Downloads\LabourInstaller"
set "OUTPUT_ISO=C:\Users\sys.admin\Downloads\IsoUsingBatchSript.iso"
set "ISO_LABEL=IsoUsingBatch"

:: Path to oscdimg.exe (adjust this path to where you installed Windows ADK)
set "OSCDIMG_PATH=C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\Oscdimg\oscdimg.exe"
::                C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\Oscdimg\


:: Create the ISO
"%OSCDIMG_PATH%" -l%ISO_LABEL% -m -o "%SOURCE_DIR%" "%OUTPUT_ISO%"

if %ERRORLEVEL% EQU 0 (
    echo ISO created successfully at: %OUTPUT_ISO%
) else (
    echo Failed to create ISO.
)

endlocal
pause
