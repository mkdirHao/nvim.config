--- set leader
vim.g.mapleader = " "
-- share with system clipboard
vim.api.nvim_set_option("clipboard", "unnamed")
-- set status bar
vim.api.nvim_set_option("laststatus", 3)
-- set 相对行数
vim.wo.number = true
vim.api.nvim_set_option("rnu", true)
-- 开启swapfile
vim.opt.swapfile = true

-- set cursor shape in deferent mode
vim.cmd("set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50")
-- the set 设置tab的宽度,设置缩进的宽度
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


-- Navigate vim panes better |  在不同的Window中快速移动
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- vim define save ctrl s
vim.keymap.set({'i'}, '<C-s>', '<C-o>:w<ENTER>')
vim.keymap.set({'n'}, '<C-s>', ':w<ENTER>')

-- no highlight for end search
vim.keymap.set("n", "<leader>eh", ":nohlsearch<CR>",{desc="search obj no highlight"})

-- set border with hover

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = "single"
  }
)
