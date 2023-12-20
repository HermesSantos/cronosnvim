-- Lazy
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

-- Lazy setting up the colorscheme
require("lazy").setup({
	"craftzdog/solarized-osaka.nvim"
})
-- Setting up the colorscheme
vim.cmd("colorscheme solarized-osaka")

require("base")
require("keymaps")
