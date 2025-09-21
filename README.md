this is my dotfiles repo for nixOS

## instructions

# edit /etc/nixos/configuration.nix to install neovim and git and change hostname 
then run ``sudo nixos rebuild switch``

# clone this repo 
``git clone https://github.com/bluecxmboo/dots-nix``

# remove hardware-configuration.nix and replace with system one 
``rm hardware-configuration.nix && sudo cp /etc/nixos/configuration.nix .``

# run rebuild command with flake
``sudo nixos-rebuild switch --flake .#nixos-btw (or whatever hostname i'm currently using)``

# reboot
``reboot``


