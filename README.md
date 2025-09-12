this is my nixOS dots repo

# change to unstable channel
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos

# update channel
sudo nix-channel --update
# copy this repo
git clone https://github.com/bluecxmboo/dotfiles-nixOS

# copy hardware-config.nix to repo 
sudo cp -r /etc/nixos/hardware-configuration.nix .
# copy files to /etc/nixos
sudo cp -r . /etc/nixos

# rebuild system
sudo nixos-rebuild switch --flake /etc/nixos#nixos

# clone dotfiles repo
git clone https://github.com/bluecxmboo/dotfiles

# stow everything in dotfiles directory
stow (whatever appears in ls)

# reboot
reboot
