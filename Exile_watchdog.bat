@echo off
cls

set version=0.9.19
set wat=Arma3 Exile

title %wat% Watchdog

:watchdog
echo (%time%) %wat% started.
start "exile" /wait /high "D:\Servers\ArmA 3 General Server\arma3server.exe" -port=2340 "-config=D:\Servers\ArmA 3 General Server\Exile\config.cfg" "-profiles=Exile" -ip=74.91.122.82 "-cfg=D:\Servers\ArmA 3 General Server\Exile\basic.cfg" -name=Exile "-mod=@Exile;@ASDG_JR;@CUP_Weapons;@Bornholm;" "-servermod=@ExileServer;@marma;" -world=empty -nosplash -noSound -noPause -autoinit -enableHT
echo (%time%) %wat% closed or crashed, restarting.
goto watchdog