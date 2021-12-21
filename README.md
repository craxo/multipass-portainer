# [Multipass Setup Script](https://github.com/craxo/multipass-portainer)
This script will ready up a running VM using [Multipass](https://multipass.run/) with [Docker](https://www.docker.com/), and a web GUI for Docker named [Portainer](https://www.portainer.io/).

#### To find the web GUI:
```
multipass info portainer
```

As the networks are bridged either of them will host Portainer on port 9443.

#### To attach shell to the VM:
```
multipass sh portainer
```

Make sure you run this script as an administrator.


## The script will invoke the following

### Download and install multipass
Multipass v1.8.0 is fetched from [GitHub](https://github.com/canonical/multipass/releases/v1.8.0/).

### Launch Multipass from terminal:
```
multipass launch --name portainer --network name=<network-name>
```

In order to find eligable network names run:
```
multipass networks
```


### Mount local directory to the VM instance:
```
multipass set local.privileged-mounts=true
mkdir C:\VM\portainer
multipass mount C:\VM\portainer portainer:/shared
```

### Transfer init.sh
The init.sh script sets up the virtual machine with the required tools such as Docker and Portainer.
It also creates a new group for Docker in order to run the commands without sudo.

### Connect terminal to the VM
```
multipass shell portainer
```

