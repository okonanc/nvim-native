vim.pack.add({
    { src = "https://github.com/stevearc/oil.nvim" },
})
require("oil").setup({
    columns = {
        "icon",
        -- "permissions",
    },
    win_options = {
        signcolumn = "yes",
    },
    keymaps = {
        ["<C-r>"] = { "actions.refresh" },
        ["gt"] = { "actions.toggle_trash", mode = "n" },
    },
    show_hidden = false,
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Toggle explorer" })
