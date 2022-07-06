#!/bin/bash

PI_USER="pi"

if [ $EUID != 0 ]
then
  echo "run with sudo"
  exit 1
fi


echo "exit to not run the thing"
exit 0

# update system
apt update && apt upgrade

# install docker
curl -sSL https://get.docker.com | sh

# add non-root user to docker group
usermod -aG docker $PI_USER

echo "installation complete"
echo "reboot the pi before running the next script"
echo "try running 'sudo reboot now'"

exit