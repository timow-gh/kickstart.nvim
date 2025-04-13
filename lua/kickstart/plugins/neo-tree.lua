-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
      filesystem = {
       filtered_items = {
          visible = true, -- true means hidden files are only dimmed out
          hide_dotfiles = false,
          hide_gitignore = false,
          never_show = { ".git", ".cache" },
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
  },
}
