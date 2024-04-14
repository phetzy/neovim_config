vim.opt.termguicolors = true

require("nvim-tree").setup {
    update_focused_file = {
        enable = true,
        update_cwd = true,
        autoresize = true
    }
}

local api = require("nvim-tree.api")

local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, noremap = true, silent = true, nowait = true }
end

vim.keymap.set('n', '<leader>nf', api.fs.create, opts('Create File or Directory'))
vim.keymap.set('n', '<leader>rf', api.fs.remove, opts('Delete'))
vim.keymap.set('n', '<leader>to', api.tree.open, opts('Open'))
vim.keymap.set('n', '<leader>tq', api.tree.close, opts('Close'))
vim.keymap.set('n', '<leader>te', api.tree.expand_all, opts('Expand All'))
vim.keymap.set('n', '<leader>tc', api.tree.collapse_all, opts('Collapse All'))
vim.keymap.set('n', '<leader>tr', api.tree.reload, opts('Reload'))
vim.keymap.set('n', '<leader><Up>', api.node.navigate.parent, opts('Parent Directory'))
vim.keymap.set('n', '<leader><Down>', api.node.navigate.sibling.next, opts('Next Sibling'))
