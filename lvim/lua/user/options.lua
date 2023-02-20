local o = vim.opt -- for conciseness
local lvb = lvim.builtin

-- line numbers
o.relativenumber = true -- show relative line numbers
o.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
o.tabstop = 2 -- 2 spaces for tabs (prettier default)
o.shiftwidth = 2 -- 2 spaces for indent width
o.expandtab = true -- expand tab to spaces
o.autoindent = true -- copy indent from current line when starting new one
o.smartindent = true -- make indenting smarter again
o.numberwidth = 4 -- set number column width to 2 {default 4}

-- line wrapping
o.wrap = false -- disable line wrapping

-- search settings
o.ignorecase = true -- ignore case when searching
o.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
o.cursorline = true -- highlight the current cursor line

-- theme & appearance
o.guifont = "monospace:h17" -- font used in gui nvim applications
lvim.colorscheme = "tokyonight-night"
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"
-- lvim.use_icons = false
o.termguicolors = true
o.background = "dark" -- colorschemes that can be light or dark will be made dark
o.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
o.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
o.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
o.splitright = true -- split vertical window to the right
o.splitbelow = true -- split horizontal window to the bottom

o.iskeyword:append("-") -- consider string-string as whole word

-- popup display time
-- o.timeoutlen = 500 -- whickey.nvim

o.pumheight = 10 -- pop up menu height
o.conceallevel = 0 -- so that `` is visible in markdown files
o.cmdheight = 2 -- command-line space in the neovim command line for displaying messages
o.showtabline = 2 -- always show tabs
o.colorcolumn = "99999" -- fixes indentline for now
o.undofile = true -- enable persistent undo
o.scrolloff = 8 -- is one of my fav
o.sidescrolloff = 8

-- lvim plugin options
lvim.format_on_save.enabled = true
lvim.log.level = "warn"
lvim.lsp.diagnostics.virtual_text = false -- show/disable lsp errors

lvb.nvimtree.setup.view.side = "left"
lvb.alpha.active = true
lvb.alpha.mode = "dashboard"
lvb.terminal.active = true
lvb.nvimtree.setup.renderer.icons.show.git = false

o.updatetime = 300 -- faster completion
