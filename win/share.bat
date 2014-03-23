@echo off
set /p ipaddr=<ipaddr
rd share
ECHO Vagrant IP: %ipaddr%
REM Using S:\ by default. Change if conflits with existing drive.
net use t: \\%ipaddr%\vagrant-share
ECHO Vagrat-Share added on t:\