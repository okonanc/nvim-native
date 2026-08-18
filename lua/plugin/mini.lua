vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
})

-- local MiniFiles = require("mini.files")
-- MiniFiles.setup({
--     mappings = {
--         go_in = "<CR>",
--         go_in_plus = "L",
--         go_out = "_",
--         go_out_plus = "H",
--     },
-- })
-- --- mini files ---
-- vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Toggle mini files" })
-- vim.keymap.set("n", "<leader>-", function()
--     MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
--     MiniFiles.reveal_cwd()
-- end, { desc = "Toggle into currently opened file" })
--

--- mini notify ---
require("mini.notify").setup({
    -- only show messages
    content = {
        format = function(notif)
            return notif.msg
        end,
    },
})

--- mini cmdline completion ---
require("mini.cmdline").setup({
    autocorrect = { enable = false }
})

--- mini surround ---
require("mini.surround").setup({
  -- Custom surroundings to be used on top of builtin ones.
  -- For more information with examples, see `:h MiniSurround.config`.
  custom_surroundings = {},

  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = 'sa', -- Add surrounding in Normal and Visual modes
    delete = 'sd', -- Delete surrounding
    find = 'sf', -- Find surrounding (to the right)
    find_left = 'sF', -- Find surrounding (to the left)
    highlight = 'sh', -- Highlight surrounding
    replace = 'sr', -- Replace surrounding

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- Whether to respect selection type:
  -- - Place surroundings on separate lines in linewise mode.
  -- - Place surroundings on each line in blockwise mode.
  respect_selection_type = false,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
  -- see `:h MiniSurround.config`.
  search_method = 'cover',

  -- Whether to disable showing non-error feedback
  -- This also affects (purely informational) helper messages shown after
  -- idle time if user input is required.
  silent = false,
})

--- mini picker ---
local MiniPick = require("mini.pick")
local MiniExtra = require("mini.extra")

MiniPick.setup()
MiniExtra.setup()

vim.keymap.set("n", "<leader>ff", function() MiniPick.builtin.files() end, { desc = "Mini File Picker" })
vim.keymap.set("n", "<leader>fg", function() MiniPick.builtin.grep({ pattern = vim.fn.expand("<cword>") }) end, { desc = "Grep word/Search word" })
vim.keymap.set("n", "<leader>fh", function() MiniPick.builtin.buffers() end, { desc = "Mini Buffers" })
vim.keymap.set("n", "<leader>vh", function() MiniPick.builtin.help() end, { desc = "Mini Help" })

vim.keymap.set("n", "<leader>fd", function() MiniExtra.pickers.diagnostic() end, { desc = "Mini Picker Diagnostics" })
vim.keymap.set("n", "<leader>fk", function() MiniExtra.pickers.keymaps() end, { desc = "Search keymaps"})

--- mini completions ---
local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
    lsp_completion = {
        auto_setup = true
    }
})

--- mini statusline ---
local MiniStatusline = require("mini.statusline")
MiniStatusline.setup()

--- mini icons ---
local MiniIcons = require("mini.icons")
MiniIcons.setup()
