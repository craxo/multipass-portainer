@ECHO OFF
ECHO Mount local directory to the VM instance.
ECHO Enabling volume mount.
multipass set local.privileged-mounts=true
ECHO Creating directory 'C:\VM\portainer'.
mkdir C:\VM\portainer
ECHO Copying init.sh into the shared volume.
copy scripts\init.sh C:\VM\portainer\init.sh
ECHO Waiting for the VM to start.
TIMEOUT /T 5 /NOBREAK
multipass mount C:\VM\portainer portainer:~/shared
EXIT