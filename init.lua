require("fetzy")

require("onedarkpro").setup({
  styles = {
    types = "NONE",
    methods = "NONE",
    numbers = "NONE",
    strings = "NONE",
    comments = "italic",
    keywords = "bold,italic",
    constants = "NONE",
    functions = "italic",
    operators = "NONE",
    variables = "NONE",
    parameters = "NONE",
    conditionals = "italic",
    virtual_text = "NONE",
  },
  options = {
      transparency = true
  }
})

vim.cmd("colorscheme onedark_vivid")

vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "TelescopeNormal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "TelescopeBorder", {bg = "none"})


-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    desc= 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Preview substitutions live, as you type
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

vim.g.have_nerd_font = true
