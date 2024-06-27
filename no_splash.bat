@echo off

for %%I in (.) do set "directory=%%~dpI"

for /d %%a in ("%directory%\*") do (
    if exist "%%a\opera_splash.exe" (
        del "%%a\opera_splash.exe"
        @REM set "result=%%a\opera_splash.exe"
    )
)

@REM echo %TIME% - %result% >> %~dp0\task_monitoring.log"

@rem launch opera
"%directory%\launcher.exe"

exit /b 0
