--Get nvim package manager (lazy vim)
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

require("lazy").setup(    
	{ 
		{'voldikss/vim-floaterm'},
		{'ptzz/lf.vim'},
		{'https://github.com/tpope/vim-commentary'},
		{'https://github.com/pseewald/vim-anyfold'},
		{'https://github.com/jpalardy/vim-slime'},
		{'https://github.com/tpope/vim-fugitive'},
		{'vim-airline/vim-airline'},
		-- For LSP support (see here: 
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},

	})
