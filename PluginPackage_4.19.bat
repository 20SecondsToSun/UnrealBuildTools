@echo Unreal Engine batch file for plugin auto build
set UNREAL_PATH=d:\EpicGames\UE18\UE_4.18
set PLUGIN_PATH=d:\_projects\UnrealEngine\IosNativeDemo\Plugins\IOSScreenshotMaker\IOSScreenshotMaker.uplugin
set ARCHIVE_DIR=%CD%/output

%UNREAL_PATH%\Engine\Build\BatchFiles\RunUAT.bat BuildPlugin -Plugin=%PLUGIN_PATH% -Package=%ARCHIVE_DIR% -Rocket