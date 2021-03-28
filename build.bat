@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"



set cur_dir=%cd%

call genWindowsMakefiles.cmd

cd %cur_dir%

set target=liveMedia

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

set target=BasicUsageEnvironment

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

set target=UsageEnvironment

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

set target=groupsock

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

REM set target=WindowsAudioInputDevice

REM echo -----------%target%-----------

REM cd %cur_dir%\%target%

REM nmake /B -f %target%.mak

set target=mediaServer

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

set target=proxyServer

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

set target=testProgs

echo -----------%target%-----------

cd %cur_dir%\%target%

nmake /B -f %target%.mak

:End

echo -----------------------build exe and lib-----------------------

cd %cur_dir%

for /r "%cur_dir%" %%i in (*.lib) do echo %%i

for /r "%cur_dir%" %%i in (*.exe) do echo %%i

echo -----------------------Then End-----------------------

pause

