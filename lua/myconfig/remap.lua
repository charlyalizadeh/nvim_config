vim.g.mapleader = " "

-- Move between window --
vim.keymap.set("n", "<leader>wj", "<C-W><C-J>")
vim.keymap.set("n", "<leader>wk", "<C-W><C-K>")
vim.keymap.set("n", "<leader>wl", "<C-W><C-L>")
vim.keymap.set("n", "<leader>wh", "<C-W><C-H>")

-- Move with visual --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay in the center --
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace current word --
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Reset highlight --
vim.keymap.set("n", "<leader><leader>",  [[:noh<CR>]])

-- Split --
vim.keymap.set("n", "<leader>sj",  [[:set sb <bar> :split <CR>]])
vim.keymap.set("n", "<leader>sk",  [[:set nosb <bar> :split <CR>]])
vim.keymap.set("n", "<leader>sh",  [[:set nospr <bar> :vsplit <CR>]])
vim.keymap.set("n", "<leader>sl",  [[:set spr <bar> :vsplit <CR>]])

-- Fix wrong highlight --
vim.keymap.set("n", "<F2>", [[:syntax sync fromstart <CR>]])

-- Quit Terminal --
vim.keymap.set("t", ",<Esc>", "<C-\\><C-N>")
