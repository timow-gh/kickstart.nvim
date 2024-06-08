return {
  {
    'airblade/vim-rooter', -- rooter changes the working directory to the orject root when you open a file or directory
    config = function()
      vim.g.rooter_patterns = { '.git' }
    end,
  },
}
