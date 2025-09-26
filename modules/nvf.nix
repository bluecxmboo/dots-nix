 {lib,...}: {
vim = {
theme = {
enable = true;
name = "catppuccin";
style = "macchiato";
};
statusline.lualine.enable = true;
statusline.lualine.theme = "catppuccin";
debugger.nvim-dap.enable = true;
lsp.trouble.enable = true;
debugger.nvim-dap.ui.enable = true;
diagnostics.config.underline = true;
 diagnostics.config.virtual_text = {
 format = lib.generators.mkLuaInline ''
     function(diagnostic)
       return string.format("%s (%s)", diagnostic.message)
     end
   '';
 };
autocomplete.blink-cmp.enable = true;
diagnostics.enable = true;
telescope.enable = true;
#autocomplete.nvim-cmp.enable = true;
binds.whichKey.enable = true;
binds.whichKey.setupOpts.preset = "modern";
utility.snacks-nvim.enable = true;
utility.yazi-nvim.enable = true;
utility.motion.flash-nvim.enable = true;
tabline.nvimBufferline.enable = true;
tabline.nvimBufferline.mappings.closeCurrent = "<leader>cb";
mini.basics.enable = true;
mini.pairs.enable = true;
mini.animate.enable = true;
comments.comment-nvim.enable = true;
dashboard.alpha.enable = true;
dashboard.alpha.theme = "dashboard";
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
