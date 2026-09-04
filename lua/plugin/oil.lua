vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
})
local detail = false
function _G.get_oil_winbar()
	local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
	local dir = require("oil").get_current_dir(bufnr)
	if dir then
		return vim.fn.fnamemodify(dir, ":~")
	else
		-- If there is no current directory (e.g. over ssh), just show the buffer name
		return vim.api.nvim_buf_get_name(0)
	end
end
require("oil").setup({
	columns = {
		"icon",
		-- "permissions",
	},
	win_options = {
		signcolumn = "yes",
		spell = false,
		-- winbar = "%!v:lua.get_oil_winbar()",
	},
	keymaps = {
		["cd"] = { "actions.cd" },
		["<C-r>"] = { "actions.refresh" },
		["gt"] = { "actions.toggle_trash", mode = "n" },
		["gd"] = {
			desc = "Toggle file detail view",
			callback = function()
				detail = not detail
				if detail then
					require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
				else
					require("oil").set_columns({ "icon" })
				end
			end,
		},
	},
	show_hidden = false,
})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Toggle explorer" })
