this is my nixOS dots repo

#copy this repo
git clone https://github.com/bluecxmboo/dotfiles-nixOS

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
