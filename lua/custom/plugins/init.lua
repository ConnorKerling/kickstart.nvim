-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  { -- File explorer that lets you edit the filesystem like a normal buffer
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keymaps = {
        -- Free up <C-h>/<C-l> for window navigation (see init.lua's <C-h/j/k/l> maps)
        -- by moving oil's defaults for those keys elsewhere.
        ['<C-h>'] = false,
        ['<C-l>'] = false,
        ['<C-x>'] = { 'actions.select', opts = { horizontal = true }, desc = 'Open in horizontal split' },
        ['<C-r>'] = { 'actions.refresh', desc = 'Refresh the oil listing' },
      },
    },
    dependencies = { { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font } },
    -- Lazy loading is not recommended by oil.nvim's own docs
    lazy = false,
    keys = {
      { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
    },
  },
}
