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
