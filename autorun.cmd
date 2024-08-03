
SET PIXILANG_FOLDER="..\pixilang-3.8.4\pixilang\pixilang3\bin\windows_x86_64"
SET PIXILANG_EXE="%PIXILANG_FOLDER%\pixilang_console.exe"
SET SUNVOX_FOLDER="..\sunvox-2.1.1c\sunvox\sunvox\windows_x86_64"
SET SUNVOX_EXE="sunvox.exe"
SET SUNVOX_TEST_FILE="test.sunvox"
SET PIXI_FILE="meta-patcher.pixi"


taskkill /im %SUNVOX_EXE% /f /t
del %SUNVOX_TEST_FILE%
%PIXILANG_EXE% %PIXI_FILE%
if exist %SUNVOX_TEST_FILE% %SUNVOX_EXE% %SUNVOX_TEST_FILE%