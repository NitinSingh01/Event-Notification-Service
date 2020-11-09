#! /bin/sh


#First we retrieves information about what packages can be installed, including what updates to currently installed packages packages are available, from Internet sources
sudo apt-get update &&
#Install packages to allow apt to use a repository over HTTPS
sudo apt install apt-transport-https ca-certificates curl software-properties-common  -y &&
#Add Docker’s GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  &&
#Add the stable Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"  &&
#Update your package index
sudo apt update &&
curl -O https://download.docker.com/linux/ubuntu/dists/bionic/pool/edge/amd64/containerd.io_1.2.2-3_amd64.deb  &&
sudo apt install ./containerd.io_1.2.2-3_amd64.deb  &&
#Install Docker CE
sudo apt install docker-ce  -y  &&
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose  &&
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
#now we are done with installation and we will write a welcome message
echo "Welcome Master we are all set to begin this journey !!!"
