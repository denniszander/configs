return {
  "lmburns/lf.nvim",
  cmd = "Lf",
  dependencies = { "akinsho/toggleterm.nvim" },
  opts = {
    winblend = 0,
    highlights = { NormalFloat = { guibg = "NONE" } },
    border = "shadow",
    escape_quit = true,
    default_file_manager = true,
  },
  keys = {
    { "<leader>o", "<cmd>Lf<cr>", desc = "Lf file manager" },
  },
}
