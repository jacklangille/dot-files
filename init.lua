-- Colorscheme
vim.cmd 'colorscheme challenger_deep' 

-- Set highlight on search
vim.o.hlsearch = false
-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'


-- Auto close parentheses, brackets, and quotes
local auto_pairs = { ["("] = ")", ["{"] = "}", ["["] = "]", ['"'] = '"', ["'"] = "'" }

for open, close in pairs(auto_pairs) do
  vim.api.nvim_set_keymap('i', open, open..close..'<left>', { noremap = true, silent = true })
end
vim.o.showmatch = true

-- Wrapping
vim.o.textwidth = 80
vim.o.wrap = true

-- Syntax Highlighting
vim.cmd 'syntax enable'

-- Auto indent
vim.cmd [[ autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]

-- Line and Col number
vim.o.ruler = true

-- Undo history
vim.o.undodir = "~/.config/nvim/undodir"
vim.o.undofile = true

-- Whitespace
vim.wo.list = true
vim.o.listchars = 'trail:·'

-- Special comment highlighting
vim.cmd [[ autocmd Syntax python highlight Todo ctermfg=red guifg=Red ]]
vim.cmd [[ autocmd Syntax python highlight Fixme ctermfg=red guifg=Red ]]

-- Quick run Python files with shift + R
vim.api.nvim_set_keymap('n', '<S-R>', ':!python3 %<CR>', { noremap = true, silent = true })


-- Remap gt and gT to ctrl + e and ctrl + q (prev tab and next tab) 
vim.api.nvim_set_keymap('n', '<c-e>', 'gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-q>', 'gT', { noremap = true, silent = true })

-- Time
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100  -- time in milliseconds

-- Remove gutter
vim.wo.signcolumn = 'auto'


-- Plugins

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'
end)

-- Nerdtree remap
vim.api.nvim_set_keymap('n', '<c-a>', ':NERDTreeToggle %<CR>', { noremap = true, silent = true })




