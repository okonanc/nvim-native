 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#f9faf8',
    base01 = '#edeeec',
    base02 = '#e7e8e7',
    base03 = '#707976',
    base04 = '#404946',
    base05 = '#191c1b',
    base06 = '#191c1b',
    base07 = '#191c1b',
    base08 = '#ba1a1a',
    base09 = '#3e395d',
    base0A = '#4f625e',
    base0B = '#0b453d',
    base0C = '#c8c1ee',
    base0D = '#9cd1c5',
    base0E = '#b6cbc5',
    base0F = '#d2e7e1',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#191c1b',          bg = '#f9faf8' })
  hi('TelescopeBorder',         { fg = '#707976',             bg = '#f9faf8' })
  hi('TelescopePromptNormal',   { fg = '#191c1b',          bg = '#f9faf8' })
  hi('TelescopePromptBorder',   { fg = '#707976',             bg = '#f9faf8' })
  hi('TelescopePromptPrefix',   { fg = '#0b453d',             bg = '#f9faf8' })
  hi('TelescopePromptCounter',  { fg = '#404946',  bg = '#f9faf8' })
  hi('TelescopePromptTitle',    { fg = '#f9faf8',             bg = '#0b453d' })
  hi('TelescopePreviewTitle',   { fg = '#f9faf8',             bg = '#4f625e' })
  hi('TelescopeResultsTitle',   { fg = '#f9faf8',             bg = '#3e395d' })
  hi('TelescopeSelection',      { fg = '#191c1b',          bg = '#e7e8e7' })
  hi('TelescopeSelectionCaret', { fg = '#0b453d',             bg = '#e7e8e7' })
  hi('TelescopeMatching',       { fg = '#0b453d',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
