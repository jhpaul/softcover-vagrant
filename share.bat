set /p ipaddr=<ipaddr
rd share
echo %ipaddr%
mklink /d share \\%ipaddr%\vagrant\