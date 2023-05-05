-- [[ Setting options ]]
-- See `:help vim.o`
local options = {
  -- creates a swapfile
  swapfile = false,
  -- force all horizontal splits to go below current window
  splitbelow = true,
  -- force all vertical splits to go to the right of current window
  splitright = true,
  -- Set highlight on search
  hlsearch = false,
  -- Make line numbers default
  number = true,
  -- Enable mouse mode
  mouse = 'a',
  -- Sync clipboard between OS and Neovim.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  clipboard = 'unnamedplus',
  -- display lines as one long line
  wrap = true,
  -- minimal number of screen lines to keep above and below the cursor
  scrolloff = 4,
  -- minimal number of screen columns either side of cursor if wrap is `false`
  sidescrolloff = 4,
  -- Enable break indent
  breakindent = true,
  -- Insert 2 spaces for a tab
  tabstop = 2,
  -- The number of spaces inserted for each indentation
  shiftwidth = 2,
  -- Convert tabs to spaces
  expandtab = true,
  smartindent = true,
  -- Highlight the line where the cursor is at
  cursorline = true,
  -- Save undo history
  undofile = true,
  -- Case insensitive searching UNLESS /C or capital in search
  ignorecase = true,
  smartcase = true,
  -- Keep signcolumn on by default
  signcolumn = 'yes',
  -- Decrease update time
  updatetime = 250,
  timeout = true,
  timeoutlen = 300,
  -- Set completeopt to have a better completion experience
  completeopt = 'menuone,noselect',
  -- NOTE: You should make sure your terminal supports this
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.o[k] = v
end

-- !! Need to fing out what these are !! --
-- flags to shorten vim messages, see :help 'shortmess'
-- vim.opt.shortmess = "ilmnrx"

-- don't give |ins-completion-menu| messages
-- vim.opt.shortmess:append "c"

-- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
--vim.opt.formatoptions:remove({ "c", "r", "o" })

-- separate vim plugins from neovim in case vim still in use
--vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")
