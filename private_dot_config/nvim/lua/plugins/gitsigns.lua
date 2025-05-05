return {
  "lewis6991/gitsigns.nvim",
  event = "VeryLazy",
  config = function ()
    require("gitsigns").setup({
      vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", { noremap = true, silent = true }),
      vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true }),
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { noremap = true, silent = true }),
    })
  end
}
