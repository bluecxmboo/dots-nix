this is my nixOS dots repo

# change to unstable channel
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos

# update channel
sudo nix-channel --update
# copy this repo
git clone https://github.com/bluecxmboo/dotfiles-nixOS

# copy hardware-config.nix to repo 
sudo cp -r /etc/nixos/hardware-configuration.nix .
# rebuild system
sudo nixos-rebuild switch --flake . #nixos-btw 
# update flake
sudo nix flake update
# clone dotfiles repo
git clone https://github.com/bluecxmboo/dotfiles

# stow everything in dotfiles directory
stow (whatever appears in ls)

# apply updates
sudo nixos-rebuild switch --flake .
# reboot
reboot
