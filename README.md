# pi-setup

1. Install git and clone this directory
1. Run the script you need, and do it with sudo


## important notes

- the scripts assume that this is a clean install of raspian
- the scripts assume that you have a working internet connection
- It assumes that the user in pi. change the script if its something else

## docker and docker-compose

- to install docker compose, you have to run the two docker scripts seperately.
- the first one is to install the docker engine, the second one is to install docker compose with portainer

## Oh-my-zsh

- i like oh-my-zsh, so this simple script installs zsh and omz, and lets you set zsh as standard shell.


## Docker, Portainer, PiHole, Nginx-proxy-manager and PiVPN  

This is a very good base for a home server setup. With these tools you can: 

### docker and docker-compose

- keep alle services separate from each other
- easy to restart and change services
- easy to see what services are running
### Pihole

- set up you own DNS records
- adblocking vie DNS 
### NPM

- use a proxy server to send traffic to the correct ports of the pi
### Portainer

- webGUI for docker container managment
- easy to use and keep track container
### PiVPN

- Lets you connect safely to your home network
- adblocking anywhere
- access all services from anywhere