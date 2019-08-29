@echo off
set nssmService="testrealm"
SET homeDir="C:\TrinityCore"
SET binDir="%homeDir%\bin"
SET sourceDir="%homeDir%\frostmourne-3_3_5"

if "%1"=="update" (
    cd %binDir%
    update.bat %homeDir% %nssmService%
)

if "%1"=="restore" (
    nssm %nssmService% stop
    del %binDir%/worldserver.exe
    copy %binDir%/worldserver.backup.exe %binDir%/worldserver.exe
    nssm %nssmService% start
)

if "%1"=="switchbranch" (
    cd %sourceDir%
    git checkout %2
)