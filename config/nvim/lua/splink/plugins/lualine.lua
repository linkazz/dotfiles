-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine themes
local lualine_gruvbox = require("lualine.themes.gruvbox")

-- custom colour palette
-- local colors = {
--   black = "#282828",
--   white = "#ebdbb2",
--   red = "#fb4934",
--   green = "#b8bb26",
--   blue = "#83a598",
--   yellow = "#fe8019",
--   gray = "#a89984",
--   darkgray = "#3c3836",
--   lightgray = "#504945",
--   inactivegray = "#7c6f64",
-- }

-- custom colour theme
-- lualine_gruvbox.normal.a.bg = new_colors.blue
-- lualine_gruvbox.insert.a.bg = new_colors.green
-- lualine_gruvbox.visual.a.bg = new_colors.violet
-- lualine_gruvbox.command = {
--   a = {
--     gui = "bold",
--     bg = new_colors.yellow,
--     fg = new_colors.black, -- black
--   },
-- }

-- lualine config
lualine.setup({
  options = {
    theme = lualine_gruvbox,
  },
})
