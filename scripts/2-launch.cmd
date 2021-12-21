@ECHO OFF
ECHO Launching Multipass VM.
multipass networks
echo Enter full name of network to bridge (ie. 'Ethernet 4'):
set /p variable=
multipass launch -v --name portainer --network name="%variable%"
EXIT