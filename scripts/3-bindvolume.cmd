@ECHO OFF
ECHO Mount local directory to the VM instance.
ECHO Enabling volume mount.
multipass set local.privileged-mounts=true
ECHO Wait for enable to take effect
TIMEOUT /T 5 /NOBREAK
multipass mount scripts/shared portainer:~/shared
EXIT