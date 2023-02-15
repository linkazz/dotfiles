-- set colorscheme with a protected call
-- in case it isn't installed
-- pcall(vim.cmd, "colorscheme nightfly")
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end
