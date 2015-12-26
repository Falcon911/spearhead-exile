@Echo off
echo.
echo Rotate Logfiles
set logs="C:\Server\Tools"
cd /d %logs%
start "" "log-rotator.cmd"
echo.

timeout 15

echo.
echo START BEC
set bec="D:\Servers\ArmA 3 General Server\Exile\Bec"
cd /d %bec%
start "" "bec.exe" -f config.cfg
echo.
exit