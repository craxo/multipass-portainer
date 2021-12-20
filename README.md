# The setup.bat script will do the following:

## Download and install multipass
You will have to reboot your computer in order to complete the installation.
Re-run the script.

## Launch Multipass from terminal:
```
multipass launch --name portainer
```

## Mount some directory to the VM instance:
```
multipass set local.privileged-mounts=true
mkdir C:\VM\portainer
multipass mount C:\VM\portainer portainer:/data
```

## Wait for the VM to be created until connecting.
```
multipass shell portainer
```

## Then it will copy init.sh script into the shared VM volume and execute script
