@ECHO OFF

START /B /WAIT CMD /C %~dp0/scripts/1-install-multipass.cmd

START /B /WAIT CMD /C %~dp0/scripts/2-launch.cmd

TIMEOUT /T 15 /NOBREAK

START /B /WAIT CMD /C %~dp0/scripts/3-bindvolume.cmd

TIMEOUT /T 20 /NOBREAK

START /B /WAIT CMD /C %~dp0/scripts/4-run-vm-init-script.cmd

ECHO Waiting 60s for VM to reboot to connect again.

TIMEOUT /T 60 /NOBREAK

ECHO Setup finished, please re-run if any errors occurs.
START /B /WAIT CMD /C %~dp0/scripts/5-open-portainer-gui.cmd

multipass shell portainer
