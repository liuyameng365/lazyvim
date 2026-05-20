-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = {
  noremap = true,
  silent = true,
}

vim.keymap.set("i", "jk", "<ESC>", vim.tbl_extend("force", opts, { desc = "ESC Insert Mode" }))
vim.keymap.set("t", "jk", [[<C-\><C-n>]], vim.tbl_extend("force", opts, { desc = "ESC Terminal Mode" }))

vim.keymap.set("n", "<leader>tt", function()
  Snacks.terminal(nil, { cwd = vim.uv.cwd() })
end, vim.tbl_extend("force", opts, { desc = "Open Terminal" }))
