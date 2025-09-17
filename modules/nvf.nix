{pkgs,lib,...}: {
vim = {
theme = {
enable = true;
name = "catppuccin";
style = "mocha";
};
statusline.lualine.enable = true;
telescope.enable = true;
autocomplete.nvim-cmp.enable = true;
binds.whichKey.enable = true;
binds.whichKey.setupOpts.preset = "modern";
utility.snacks-nvim.enable = true;
mini.align.enable = true;
mini.basics.enable = true;
mini.animate.enable = true;
mini.starter.enable = true;
mini.git.enable = true;
languages = {
enableLSP = true;
enableTreesitter = true;
nix.enable = true;
python.enable = true;
};
};
}
