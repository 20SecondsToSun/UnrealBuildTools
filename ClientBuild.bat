@echo Unreal Engine batch file for client auto build
set UNREAL_PATH=d:\EpicGames\UE18\UE_4.18
set PROJECT_NAME=VRShooter
set PROJECT_PATH=c:\projects\UnrealEngine\VRShooter
set PROJECT_FILE=%PROJECT_PATH%\%PROJECT_NAME%.uproject
set PROJECT_MS_FILE=%PROJECT_PATH%\%PROJECT_NAME%.sln
set PF=Program Files (x86)
set VS_BUILD=c:\%PF%\MSBuild\14.0\Bin\
set ARCHIVE_DIR=d:\builds\

%UNREAL_PATH%\Build\BatchFiles\Clean.bat %PROJECT_NAME%Editor Win64 Development %PROJECT_FILE% -WaitMutex
%UNREAL_PATH%\Engine\Binaries\DotNET\UnrealBuildTool.exe -projectfiles -project=%PROJECT_FILE% -game -rocket -progress
%UNREAL_PATH%\Engine\Build\BatchFiles\Build.bat %PROJECT_NAME%Editor Win64 Development %PROJECT_FILE% -WaitMutex
@echo success start VS
cd "%VS_BUILD%" 
MSBuild.exe %PROJECT_MS_FILE% /t:build /p:Platform=Win64;verbosity=diagnostic
%UNREAL_PATH%\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun -project=%PROJECT_FILE% -noP4 -platform=Win64 -clientconfig=Development -cook -allmaps -build -stage -pak -archive -archivedirectory=%ARCHIVE_DIR%
