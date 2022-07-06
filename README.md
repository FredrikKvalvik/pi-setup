# pi-setup

1. Install git and clone this directory
1. Run the script you need, and do it with sudo


## important notes

- the scripts assumes:
  - that this is a clean install of raspian
  - that you have a working internet connection
  - that the user is pi. change the script if its something else

## docker and docker-compose

1. run `sudo bash docker_install.sh` to install docker
1. reboot the pi. `sudo reboot now`
1. run `sudo bash docker_compose_install.sh` to install docker-compose

- the reboot has to happen to update docker group and allow non-root users to use docker
- this also installs portainer, a GUI for managing docker containers and is found at [PI-IP-address]:9000

## Oh-my-zsh

I like oh-my-zsh, so this simple script installs zsh and omz, and lets you set zsh as standard shell.

run `sudo bash oh-my-zsh_install.sh` to install zshg and oh-my-zsh


## Docker, Portainer, PiHole, Nginx-proxy-manager and PiVPN  

This is a very good base for a home server setup. In short, this lets you set up you home network with its own domains, mmultiple web servers, and a VPN; all of thison a raspberry pi.

### docker and docker-compose

- keep alle services separate and isolated
- easy to add, restart, delete and change services
- easy to see what services are running
### Pihole

- set up you own DNS records
- adblocking via DNS

### NPM

- use a proxy server to send traffic to the correct ports of the pi

### Portainer

- webGUI for docker container managment
- easy to use and keep track container

### PiVPN

- Lets you connect safely to your home network
- adblocking anywhere
- access all services from anywhere
- [Link to PiVPN docs](https://docs.pivpn.io/)

### steps to install

(run commands in thee root of this directory)
1. Follow the steps for docker and docker-compose