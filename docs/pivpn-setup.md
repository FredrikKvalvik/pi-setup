# setting up PiVPN, the short version

This is here to help me set up a vpn without having to google a ton of shit every time.

## set up a DDNS 

using [duckdns.org](https://www.duckdns.org/) lets us create a domain that we can connect to that updates according to our public IP address. Doing this first lets use this in the PiVPN setup

## The pi

Before connecting to the internet, we must first set up the pi. To start the setup, run the following command:
```
curl -L https://install.pivpn.io | bash
```
Follow the instructions on the screen. If you are not sure what to do, you can always check the [PiVPN docs](https://docs.pivpn.io/).
- use wireguard
- Use pihole as DNS if you have it installed, or else use cloudflare
- use default port and remember it for when we open the port on the router (`51820`)

## the router

the router needs to be configured to allow for the vpn to be open to the internet. this is different for every router, but it is called port forwarding. use the port set on the vpn (`51820`).

