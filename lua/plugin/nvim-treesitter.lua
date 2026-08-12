vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })
require('nvim-treesitter').setup(
    {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<Enter>", -- set to `false` to disable one of the mappings
                node_incremental = "<Enter>",
                scope_incremental = false,
                node_decremental = "<Backspace>",
            },
        }
    }
)
