local wk = lvim.builtin.which_key

wk.active = true

wk.mappings[";"]["1"] = "<cmd>Alpha<CR>" -- opens Dashboard
wk.mappings["/"]["1"] = "<Plug>(comment_toggle_linewise_current)"
wk.mappings["/"]["2"] = "Comment toggle"
wk.mappings[";"]["2"] = "Dashboard"

-- buffer keymaps
wk.mappings.b.b["1"] = "<cmd>BufferLineCyclePrev<cr>"
wk.mappings.b.b["2"] = "Previous"
wk.mappings.b.D["1"] = "<cmd>BufferLineSortByDirectory<cr>"
wk.mappings.b.D["2"] = "Sort by directory"
wk.mappings.b.e["1"] = "<cmd>BufferLinePickClose<cr>"
wk.mappings.b.e["2"] = "Pick which buffer to close"
wk.mappings.b.f["1"] = "<cmd>Telescope buffers<cr>"
wk.mappings.b.f["2"] = "Find"
wk.mappings.b.h["1"] = "<cmd>BufferLineCloseLeft<cr>"
wk.mappings.b.h["2"] = "Close all to the left"
wk.mappings.b.j["1"] = "<cmd>BufferLinePick<cr>"
wk.mappings.b.j["2"] = "Jump"
wk.mappings.b.l["1"] = "<cmd>BufferLineCloseRight<cr>"
wk.mappings.b.L["1"] = "<cmd>BufferLineSortByExtension<cr>"
wk.mappings.b.l["2"] = "Close all to the right"
wk.mappings.b.L["2"] = "Sort by language"
wk.mappings.b.n["1"] = "<cmd>BufferLineCycleNext<cr>"
wk.mappings.b.n["2"] = "Next"
wk.mappings.b.name = "Buffers"
wk.mappings.c["1"] = "<cmd>BufferKill<CR>"
wk.mappings.c["2"] = "Close Buffer"

-- lua keymaps
wk.mappings.d.b["1"] = "<cmd>lua require'dap'.step_back()<cr>"
wk.mappings.d.b["2"] = "Step Back"
wk.mappings.d.c["1"] = "<cmd>lua require'dap'.continue()<cr>"
wk.mappings.d.C["1"] = "<cmd>lua require'dap'.run_to_cursor()<cr>"
wk.mappings.d.c["2"] = "Continue"
wk.mappings.d.C["2"] = "Run To Cursor"
wk.mappings.d.d["1"] = "<cmd>lua require'dap'.disconnect()<cr>"
wk.mappings.d.d["2"] = "Disconnect"
wk.mappings.d.g["1"] = "<cmd>lua require'dap'.session()<cr>"
wk.mappings.d.g["2"] = "Get Session"
wk.mappings.d.i["1"] = "<cmd>lua require'dap'.step_into()<cr>"
wk.mappings.d.i["2"] = "Step Into"
wk.mappings.d.name = "Debug"
wk.mappings.d.o["1"] = "<cmd>lua require'dap'.step_over()<cr>"
wk.mappings.d.o["2"] = "Step Over"
wk.mappings.d.p["1"] = "<cmd>lua require'dap'.pause()<cr>"
wk.mappings.d.p["2"] = "Pause"
wk.mappings.d.q["1"] = "<cmd>lua require'dap'.close()<cr>"
wk.mappings.d.q["2"] = "Quit"
wk.mappings.d.r["1"] = "<cmd>lua require'dap'.repl.toggle()<cr>"
wk.mappings.d.r["2"] = "Toggle Repl"
wk.mappings.d.s["1"] = "<cmd>lua require'dap'.continue()<cr>"
wk.mappings.d.s["2"] = "Start"
wk.mappings.d.t["1"] = "<cmd>lua require'dap'.toggle_breakpoint()<cr>"
wk.mappings.d.t["2"] = "Toggle Breakpoint"
wk.mappings.d.u["1"] = "<cmd>lua require'dap'.step_out()<cr>"
wk.mappings.d.U["1"] = "<cmd>lua require'dapui'.toggle()<cr>"
wk.mappings.d.u["2"] = "Step Out"
wk.mappings.d.U["2"] = "Toggle UI"

-- tree toggle keymaps
wk.mappings.e["1"] = "<cmd>NvimTreeToggle<CR>"
wk.mappings.e["2"] = "Explorer"

-- wk.mappings.f["1"] = function ()
wk.mappings.f["2"] = "Find File"

-- git telescope keymaps
wk.mappings.g.b["1"] = "<cmd>Telescope git_branches<cr>"
wk.mappings.g.b["2"] = "Checkout branch"
wk.mappings.g.C["1"] = "<cmd>Telescope git_bcommits<cr>"
wk.mappings.g.c["1"] = "<cmd>Telescope git_commits<cr>"
wk.mappings.g.c["2"] = "Checkout commit"
wk.mappings.g.C["2"] = "Checkout commit(for current file)"
wk.mappings.g.d["1"] = "<cmd>Gitsigns diffthis HEAD<cr>"
wk.mappings.g.d["2"] = "Git Diff"
wk.mappings.g.g["1"] = "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>"
wk.mappings.g.g["2"] = "Lazygit"
wk.mappings.g.j["1"] = "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>"
wk.mappings.g.j["2"] = "Next Hunk"
wk.mappings.g.k["1"] = "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>"
wk.mappings.g.k["2"] = "Prev Hunk"
wk.mappings.g.l["1"] = "<cmd>lua require 'gitsigns'.blame_line()<cr>"
wk.mappings.g.l["2"] = "Blame"
wk.mappings.g.name = "Git"
wk.mappings.g.o["1"] = "<cmd>Telescope git_status<cr>"
wk.mappings.g.o["2"] = "Open changed file"
wk.mappings.g.p["1"] = "<cmd>lua require 'gitsigns'.preview_hunk()<cr>"
wk.mappings.g.p["2"] = "Preview Hunk"
wk.mappings.g.R["1"] = "<cmd>lua require 'gitsigns'.reset_buffer()<cr>"
wk.mappings.g.r["1"] = "<cmd>lua require 'gitsigns'.reset_hunk()<cr>"
wk.mappings.g.R["2"] = "Reset Buffer"
wk.mappings.g.r["2"] = "Reset Hunk"
wk.mappings.g.s["1"] = "<cmd>lua require 'gitsigns'.stage_hunk()<cr>"
wk.mappings.g.s["2"] = "Stage Hunk"
wk.mappings.g.u["1"] = "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>"
wk.mappings.g.u["2"] = "Undo Stage Hunk"

-- highlight keymaps
wk.mappings.h["1"] = "<cmd>nohlsearch<CR>"
wk.mappings.h["2"] = "No Highlight"

-- lsp keymaps
wk.mappings.l.a["1"] = "<cmd>lua vim.lsp.buf.code_action()<cr>"
wk.mappings.l.a["2"] = "Code Action"
wk.mappings.L.c["1"] = "<cmd>edit /home/splink/.config/lvim/config.lua<cr>"
wk.mappings.L.c["2"] = "Edit config.lua"
wk.mappings.l.d["1"] = "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>"
wk.mappings.l.d["2"] = "Buffer Diagnostics"
wk.mappings.l.e["1"] = "<cmd>Telescope quickfix<cr>"
wk.mappings.l.e["2"] = "Telescope Quickfix"
wk.mappings.L.f["1"] =
"<cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()<cr>"
-- wk.mappings.l.f["1"] = function ()
wk.mappings.L.f["2"] = "Find LunarVim files"
wk.mappings.l.f["2"] = "Format"
wk.mappings.L.g["1"] =
"<cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()<cr>"
wk.mappings.L.g["2"] = "Grep LunarVim files"
wk.mappings.l.i["1"] = "<cmd>LspInfo<cr>"
wk.mappings.L.i["1"] = "<cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)<cr>"
wk.mappings.L.I["1"] =
"<cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()<cr>"
wk.mappings.l.I["1"] = "<cmd>Mason<cr>"
wk.mappings.l.i["2"] = "Info"
wk.mappings.l.I["2"] = "Mason Info"
wk.mappings.L.i["2"] = "Toggle LunarVim Info"
wk.mappings.L.I["2"] = "View LunarVim's changelog"
-- wk.mappings.l.j["1"] = function ()
wk.mappings.l.j["2"] = "Next Diagnostic"
wk.mappings.L.k["1"] = "<cmd>Telescope keymaps<cr>"
-- wk.mappings.l.k["1"] = function ()
wk.mappings.l.k["2"] = "Prev Diagnostic"
wk.mappings.L.k["2"] = "View LunarVim's keymappings"
-- wk.mappings.l.l["1"] = function ()
wk.mappings.l.l["2"] = "CodeLens Action"
wk.mappings.L.l.d["1"] =
"<cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())<cr>"
wk.mappings.L.l.D["1"] =
"<cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())<cr>"
wk.mappings.L.l.D["2"] = "Open the default logfile"
wk.mappings.L.l.d["2"] = "view default log"
wk.mappings.L.l.l["1"] =
"<cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())<cr>"
wk.mappings.L.l.L["1"] = "<cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())<cr>"
wk.mappings.L.l.L["2"] = "Open the LSP logfile"
wk.mappings.L.l.l["2"] = "view lsp log"
wk.mappings.L.l.N["1"] = "<cmd>edit $NVIM_LOG_FILE<cr>"
wk.mappings.L.l.n["1"] =
"<cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))<cr>"
wk.mappings.L.l.N["2"] = "Open the Neovim logfile"
wk.mappings.L.l.n["2"] = "view neovim log"
wk.mappings.L.l.name = "+logs"
wk.mappings.L.l.P["1"] = "<cmd>edit $LUNARVIM_CACHE_DIR/packer.nvim.log<cr>"
wk.mappings.L.l.p["1"] =
"<cmd>lua require('lvim.core.terminal').toggle_log_view(get_cache_dir() .. '/packer.nvim.log')<cr>"
wk.mappings.L.l.P["2"] = "Open the Packer logfile"
wk.mappings.L.l.p["2"] = "view packer log"
wk.mappings.l.name = "LSP"
wk.mappings.L.name = "+LunarVim"
-- wk.mappings.l.q["1"] = function ()
wk.mappings.l.q["2"] = "Quickfix"
wk.mappings.L.r["1"] = "<cmd>LvimReload<cr>"
-- wk.mappings.l.r["1"] = function ()
wk.mappings.L.r["2"] = "Reload LunarVim's configuration"
wk.mappings.l.r["2"] = "Rename"
wk.mappings.l.s["1"] = "<cmd>Telescope lsp_document_symbols<cr>"
wk.mappings.l.S["1"] = "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>"
wk.mappings.l.s["2"] = "Document Symbols"
wk.mappings.l.S["2"] = "Workspace Symbols"
wk.mappings.L.u["1"] = "<cmd>LvimUpdate<cr>"
wk.mappings.L.u["2"] = "Update LunarVim"
wk.mappings.l.w["1"] = "<cmd>Telescope diagnostics<cr>"
wk.mappings.l.w["2"] = "Diagnostics"

-- packer keymaps
wk.mappings.p.c["1"] = "<cmd>PackerCompile<cr>"
wk.mappings.p.c["2"] = "Compile"
wk.mappings.p.i["1"] = "<cmd>PackerInstall<cr>"
wk.mappings.p.i["2"] = "Install"
wk.mappings.p.name = "Packer"
wk.mappings.p.r["1"] = "<cmd>lua require('lvim.plugin-loader').recompile()<cr>"
wk.mappings.p.r["2"] = "Re-compile"
wk.mappings.p.S["1"] = "<cmd>PackerStatus<cr>"
wk.mappings.p.s["1"] = "<cmd>PackerSync<cr>"
wk.mappings.p.S["2"] = "Status"
wk.mappings.p.s["2"] = "Sync"
wk.mappings.p.u["1"] = "<cmd>PackerUpdate<cr>"
wk.mappings.p.u["2"] = "Update"


wk.mappings.q["1"] = "<cmd>lua require('lvim.utils.functions').smart_quit()<CR>"
wk.mappings.q["2"] = "Quit"


wk.mappings.s.b["1"] = "<cmd>Telescope git_branches<cr>"
wk.mappings.s.b["2"] = "Checkout branch"
wk.mappings.s.c["1"] = "<cmd>Telescope colorscheme<cr>"
wk.mappings.s.C["1"] = "<cmd>Telescope commands<cr>"
wk.mappings.s.c["2"] = "Colorscheme"
wk.mappings.s.C["2"] = "Commands"
wk.mappings.s.f["1"] = "<cmd>Telescope find_files<cr>"
wk.mappings.s.f["2"] = "Find File"
wk.mappings.s.h["1"] = "<cmd>Telescope help_tags<cr>"
wk.mappings.s.H["1"] = "<cmd>Telescope highlights<cr>"
wk.mappings.s.h["2"] = "Find Help"
wk.mappings.s.H["2"] = "Find highlight groups"
wk.mappings.s.k["1"] = "<cmd>Telescope keymaps<cr>"
wk.mappings.s.k["2"] = "Keymaps"
wk.mappings.s.M["1"] = "<cmd>Telescope man_pages<cr>"
wk.mappings.s.M["2"] = "Man Pages"
wk.mappings.s.name = "Search"
wk.mappings.s.p["1"] =
"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>"
wk.mappings.s.p["2"] = "Colorscheme with Preview"
wk.mappings.s.r["1"] = "<cmd>Telescope oldfiles<cr>"
wk.mappings.s.R["1"] = "<cmd>Telescope registers<cr>"
wk.mappings.s.r["2"] = "Open Recent File"
wk.mappings.s.R["2"] = "Registers"
wk.mappings.s.t["1"] = "<cmd>Telescope live_grep<cr>"
wk.mappings.s.t["2"] = "Text"

-- treesitter keymaps
wk.mappings.T.i["1"] = ":TSConfigInfo<cr>"
wk.mappings.T.i["2"] = "Info"
wk.mappings.T.name = "Treesitter"


wk.mappings.w["1"] = "<cmd>w!<CR>"
wk.mappings.w["2"] = "Save"

-- options
wk.opts.mode = "n"
wk.opts.noremap = true
wk.opts.nowait = true
wk.opts.prefix = "<leader>"
wk.opts.silent = true
wk.vopts.mode = "v"
wk.vopts.noremap = true
wk.vopts.nowait = true
wk.vopts.prefix = "<leader>"
wk.vopts.silent = true

-- which-key setup

-- hidden
wk.setup.hidden["1"] = "<silent>"
wk.setup.hidden["2"] = "<cmd>"
wk.setup.hidden["3"] = "<Cmd>"
wk.setup.hidden["4"] = "<CR>"
wk.setup.hidden["5"] = "call"
wk.setup.hidden["6"] = "lua"
wk.setup.hidden["7"] = "^:"
wk.setup.hidden["8"] = "^ "

-- icons
wk.setup.icons.breadcrumb = "»"
wk.setup.icons.group = ""
wk.setup.icons.separator = ""

-- layout
wk.setup.ignore_missing = false
wk.setup.layout.align = "left"
wk.setup.layout.height.max = 25
wk.setup.layout.height.min = 4
wk.setup.layout.spacing = 3
wk.setup.layout.width.max = 50
wk.setup.layout.width.min = 20

-- plugins
wk.setup.plugins.marks = false
wk.setup.plugins.presets.g = false
wk.setup.plugins.presets.motions = false
wk.setup.plugins.presets.nav = false
wk.setup.plugins.presets.operators = false
wk.setup.plugins.presets.text_objects = false
wk.setup.plugins.presets.windows = false
wk.setup.plugins.presets.z = false
wk.setup.plugins.registers = false
wk.setup.plugins.spelling.enabled = true
wk.setup.plugins.spelling.suggestions = 20

-- triggers & menu pop-up
wk.setup.popup_mappings.scroll_down = "<c-d>"
wk.setup.popup_mappings.scroll_up = "<c-u>"
wk.setup.show_help = true
wk.setup.triggers = "auto"
wk.setup.triggers_blacklist.i["1"] = "j"
wk.setup.triggers_blacklist.i["2"] = "k"
wk.setup.triggers_blacklist.v["1"] = "j"
wk.setup.triggers_blacklist.v["2"] = "k"

-- window
wk.setup.window.border = "single"
wk.setup.window.margin["1"] = 1
wk.setup.window.margin["2"] = 0
wk.setup.window.margin["3"] = 1
wk.setup.window.margin["4"] = 0
wk.setup.window.padding["1"] = 2
wk.setup.window.padding["2"] = 2
wk.setup.window.padding["3"] = 2
wk.setup.window.padding["4"] = 2
wk.setup.window.position = "bottom"
wk.setup.window.winblend = 0

-- visual mappings
wk.vmappings["/"]["1"] = "<Plug>(comment_toggle_linewise_visual)"
wk.vmappings["/"]["2"] = "Comment toggle"
