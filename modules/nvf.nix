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
languages = {
enableLSP = true;
enableTreesitter = true;
nix.enable = true;
python.enable = true;
};
};
}
