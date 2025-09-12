this is my nixOS config repo 

# clone this repo
git clone https://github.com/bluecxmboo/dotfiles-nixOS

# copy to /etc/nixOS
sudo cp -r . /etc/nixOS

# rebuild nixOS
sudo nixos-rebuild switch --flake /etc/nixos#nixos

# clone the dotfiles repo
git clone https://github.com/bluecxmboo/dotfiles

# stow dotfiles
stow (everything in dotfiles folder, shown when ls is ran)

# reboot
reboot
