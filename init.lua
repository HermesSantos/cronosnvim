-- Lazy initial
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy pluggins
require("lazy").setup({
	"craftzdog/solarized-osaka.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
})
-- Setting up the colorscheme
vim.cmd("colorscheme solarized-osaka")

require("base")
require("keymaps")
require("p-mason")
require("p-lsp")
require("lsp-lua")
