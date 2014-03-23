@echo off
set /p ipaddr=<ipaddr
rd share
ECHO Vagrant IP: %ipaddr%
net use s: \\%ipaddr%\vagrant-share
ECHO Vagrat-Share added on S:\