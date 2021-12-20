FOR /F "delims=" %%i in ('multipass info portainer ^| findstr /r "IPv4: \t[0-9][0-9]*\.[0-9][0-9]*.[0-9][0-9]*\.[0-9][0-9]*"') do set output=%%i
set output=%output:~16%
start https://%output%:9443
echo %output%