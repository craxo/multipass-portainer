echo "Installing Docker"
sudo snap install docker

echo "Create docker group"
sudo groupadd docker

echo "Add user to docker group"
sudo usermod -aG docker ubuntu

sleep 5

echo "Install portainer"
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    cr.portainer.io/portainer/portainer-ce:2.9.3

echo "Rebooting"
sudo reboot
