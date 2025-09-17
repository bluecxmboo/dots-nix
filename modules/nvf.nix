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
dashboard.alpha.enable = true;
dashboard.alpha.theme = "dashboard";
mini.git.enable = true;
utility.undotree.enable = true;
ui.noice.enable = true;
ui.colorizer.enable = true;
languages = {
enableLSP = true;
enableTreesitter = true;
nix.enable = true;
python.enable = true;
};
};
}
