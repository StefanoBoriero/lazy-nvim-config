-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>rtn",
  '<cmd>:lua require("neotest").run.run()<cr>',
  { noremap = true, silent = true, desc = "Run Test Nearest" }
)

vim.keymap.set(
  "n",
  "<leader>rtf",
  "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
  { noremap = true, silent = true, desc = "Run Test File" }
)

vim.keymap.set(
  "n",
  "<leader>rtl",
  "<cmd>lua require('neotest').run.run_last()<cr>",
  { noremap = true, silent = true, desc = "Run Test Last" }
)

vim.keymap.set(
  "n",
  "<leader>dtn",
  "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
  { noremap = true, silent = true, desc = "Debug Test Nearest" }
)

vim.keymap.set(
  "n",
  "<leader>dta",
  "<cmd>lua require('neotest').run.attach()<cr>",
  { noremap = true, silent = true, desc = "Debug Test Attach" }
)

vim.keymap.set(
  "n",
  "<leader>dtf",
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
  { noremap = true, silent = true, desc = "Debug Test File" }
)

vim.keymap.set(
  "n",
  "<leader>dtl",
  "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>",
  { noremap = true, silent = true, desc = "Debug Test Last" }
)

vim.keymap.set(
  "n",
  "<leader>to",
  "<cmd>lua require('neotest').output.open({ enter = true })<cr>",
  { noremap = true, silent = true, desc = "Test Output" }
)

vim.keymap.set(
  "n",
  "<leader>ts",
  "<cmd>lua require('neotest').summary.toggle()<cr>",
  { noremap = true, silent = true, desc = "Test Summary" }
)

vim.keymap.set(
  "n",
  "<leader>tS",
  "<cmd>lua require('neotest').run.stop()<cr>",
  { noremap = true, silent = true, desc = "Test Stop" }
)
