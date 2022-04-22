#! /bin/sh
echo "Get updates and install ca-certificates, curl, gnupg and lsb-release"
sudo apt-get update
sudo apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Installing Docker"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

echo "Create docker group"
sudo groupadd docker

echo "Add user to docker group"
sudo usermod -aG docker ubuntu

sleep 5

echo "Install portainer"
sudo docker volume create portainer_data
sudo docker run -d --network host --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    cr.portainer.io/portainer/portainer-ce:2.9.3

echo "Rebooting VM"
sudo reboot
