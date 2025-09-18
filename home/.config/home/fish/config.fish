alias n="nvim"
fish_add_path ~/.local/bin
set fish_greeting
zoxide init --cmd cd fish | source
fzf --fish | source
starship init fish | source
alias rebuild-nix="sudo nixos-rebuild switch --flake ."
set -g fish_key_bindings fish_vi_key_bindings
