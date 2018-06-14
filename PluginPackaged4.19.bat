@echo ~~~ Dont run this in your project dir, IT DELETES EVERYTHING IN ITS PATH ~~~ 
@echo ~~~ Also make sure you are using the correct Engine version for RunUAT for your project ~~~
@echo ~~~ Enjoy! -Rama ~~~ 

"c:\Program Files (x86)\Epic Games\UE_4.19\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -Plugin="c:\_projects\Unreal\IOSScreenshotDemo\Plugins\IOSScreenshotMaker\IOSScreenshotMaker.uplugin" -Package="%CD%\PluginPackaged" -Rocket