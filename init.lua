require("vim._core.ui2").enable({})

vim.g.mapleader = " "

require("config/options")
require("config/keymaps")
require("config/lsp")
-- require("config/statusline")
require("config/netrw")
require("config/find")
require("config/grep")
require("config/diagnostics")
require("config/formatting")
require("config/autocommands")

require("plugin/mini")
require("plugin/oil")
require("plugin/nvim-treesitter")
require("plugin/colorscheme")
require("plugin/flash")
require("plugin/coq_nvim")
require("plugin/fzflua")
require("plugin/nvim-highlight-colors")
-- require("plugin/colorizer")
