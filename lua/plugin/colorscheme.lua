vim.pack.add({
    "https://github.com/vague2k/vague.nvim",
    "https://github.com/folke/tokyonight.nvim",
})
-- vim.cmd.colorscheme("vague")
vim.cmd.colorscheme("tokyonight")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "Statusline", { bg = "none" })
