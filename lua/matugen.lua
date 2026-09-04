 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#f4fbf8',
    base01 = '#e9efec',
    base02 = '#e3eae7',
    base03 = '#6f7976',
    base04 = '#3f4946',
    base05 = '#171d1b',
    base06 = '#171d1b',
    base07 = '#171d1b',
    base08 = '#ba1a1a',
    base09 = '#446179',
    base0A = '#4a635e',
    base0B = '#006b5e',
    base0C = '#accae5',
    base0D = '#83d5c5',
    base0E = '#b1ccc5',
    base0F = '#cde8e1',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#171d1b',          bg = '#f4fbf8' })
  hi('TelescopeBorder',         { fg = '#6f7976',             bg = '#f4fbf8' })
  hi('TelescopePromptNormal',   { fg = '#171d1b',          bg = '#f4fbf8' })
  hi('TelescopePromptBorder',   { fg = '#6f7976',             bg = '#f4fbf8' })
  hi('TelescopePromptPrefix',   { fg = '#006b5e',             bg = '#f4fbf8' })
  hi('TelescopePromptCounter',  { fg = '#3f4946',  bg = '#f4fbf8' })
  hi('TelescopePromptTitle',    { fg = '#f4fbf8',             bg = '#006b5e' })
  hi('TelescopePreviewTitle',   { fg = '#f4fbf8',             bg = '#4a635e' })
  hi('TelescopeResultsTitle',   { fg = '#f4fbf8',             bg = '#446179' })
  hi('TelescopeSelection',      { fg = '#171d1b',          bg = '#e3eae7' })
  hi('TelescopeSelectionCaret', { fg = '#006b5e',             bg = '#e3eae7' })
  hi('TelescopeMatching',       { fg = '#006b5e',             bold = true })
end

-- Register a signal handler for SIGUSR1 (matugen updates).
-- The handler re-requires this module, which re-runs the code below, so the
-- previous handle is stopped first; otherwise handlers double on every signal.
if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
