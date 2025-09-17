{pkgs,lib,...}:
{
settings = {
vim.package = pkgs.neovim-unwrapped;
vim.theme.enable = true;
vim.theme.name = "catppuccin";
vim.theme.style = "dark";
vim.statusline.lualine.enable = true;
vim.telescope.enable = true;
vim.languages.nix.enable = true;
vim.languages.nix.lsp.enable = true;
vim.languages.enableTreesitter = true;
};
}
