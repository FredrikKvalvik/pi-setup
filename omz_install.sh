!#/bin/sh

if (($EUID != 0)); then
  echo "run with sudo"
  exit 1
fi

# install zsh
apt-get install zsh

# install oh-my-zsh
"y" | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"