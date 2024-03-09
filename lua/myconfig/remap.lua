vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "tn", vim.cmd.tabnew)
vim.keymap.set("n", "tc", vim.cmd.tabclose)
vim.keymap.set("n", "<PageUp>", vim.cmd.tabn)
vim.keymap.set("n", "<PageDown>", vim.cmd.tabp)
vim.keymap.set("t", '<esc>', [[<C-\><C-n>]])
