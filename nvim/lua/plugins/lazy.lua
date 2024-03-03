-- Make custom changes to LazyVim configuration

return {
  -- Use other colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax",
    },
  },
  -- Disable some stuff
  -- disable trouble
  { "folke/trouble.nvimj", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "nvim-pack/nvim-spectre", enabled = false },
}
