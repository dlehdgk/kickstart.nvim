return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'catppuccin-macchiato'
    -- Disable background color for the editor
    vim.cmd.hi 'Normal ctermbg=none guibg = none'
    vim.cmd.hi 'Comment gui=none'
  end,
}
