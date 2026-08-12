vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

vim.keymap.set("i", "jk", "<Esc>", { noremap = false })
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent block left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent block right" })

-- Jump in line
vim.keymap.set({ "n", "o", "x" }, "<a-h>", "^", { desc = "Jump to beginning of line" })
vim.keymap.set({ "n", "o", "x" }, "<a-l>", "g_", { desc = "Jump to end of line" })

-- Move block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Block Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Block Up" })

vim.keymap.set("n", "<C-c>", "<CMD>nohlsearch<CR>")

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<CMD>!chmod +x %<CR>", { silent = true, desc = "Make current file e[x]ecutable" })

-- Window navigation
-- CTRL + <hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- search and replace
vim.keymap.set("n", "<leader>S", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "Save Buffer" })
vim.keymap.set("n", "<C-q>", "<CMD>q<CR>", { desc = "Quit Buffer" })

-- replaces selected text WITHOUT losing what you yanked
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selection without loing yanked text" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move down in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centere" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centere" })

vim.keymap.set("n", "<leader>re", "<CMD>restart<CR>", { desc = "Restart Neovim (:restart)" })

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })

vim.keymap.set("n", "<leader>o", "<CMD>update<CR> <CMD>source<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

vim.keymap.set({"n", "v", "x"}, "<leader>y", '"+y<CR>')
vim.keymap.set({"n", "v", "x"}, "<leader>d", '"+d<CR>')

vim.keymap.set("n", "<leader><space>", "<CMD>e #<CR>", { desc = "Alternate buffer" })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<CTRL-l>", "<nop>")
