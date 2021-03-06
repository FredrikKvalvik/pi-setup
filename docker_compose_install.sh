!#/bin/bash

if [ $EUID != 0 ]
then
  echo "run with sudo"
  exit 1
fi

# install docker-compose dependencies
echo "installing dependencies..."
apt-get install libffi-dev libssl-dev
apt install python3-dev
apt-get install -y python3 python3-pip

# install docker-compose
pip3 install docker-compose

# enable docker to start on boot
systemctl enable docker

echo "installation complete."
echo "running test to see if everything works as expected"

# a check to see if everything is working as inteded
docker run hello-world

# exit early if docker fails to run
if [ $? != 0 ]
then
  echo "dockers hello-world test failed"
  echo "Install script failed"
  echo "exiting now"
  exit 1
fi

# pull portainer image and run it
echo "pulling portainer image..."
docker pull portainer/portainer-ce:latest
echo "running portainer container..."
docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

# print IP address and port for portainer
echo "open portainer web GUI at:"
echo "http://$(hostname -I | awk '{print $1}'):9000/"

exit
