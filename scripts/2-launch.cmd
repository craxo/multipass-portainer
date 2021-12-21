@ECHO OFF
ECHO Launching Multipass VM.
multipass networks
echo Enter name of network to bridge:
set /p variable=
multipass launch -v --name portainer --network name="%variable%",mode=manual
EXIT