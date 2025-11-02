return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  -- commented out the following two lines to make sure that obsidian plugin is always loaded and vault is always accesible
  --lazy = true,
  --ft = 'markdown', -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault: event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  opts = {
    legacy_commands = false, -- Disable Legacy commands like ObsidianSearch and clear them from the name space, note that this is transition is poorly documentented besides from some warnings
    --disable_frontmatter = true,
    -- frontmatter.enable = false,
    frontmatter = {
      enabled = false,
    },
    workspaces = {
      {
        name = 'Main',
        path = '~/Documents/MainVault',
      },
    },
  },
  vim.api.nvim_set_keymap('n', '<leader>os', ':Obsidian search<CR>', { noremap = true, silent = false, desc = 'Fuzzy Search in Obsidian MainVault' }),
  vim.api.nvim_set_keymap('n', '<leader>oo', ':Obsidian quick_switch<CR>', { noremap = true, silent = false, desc = 'Quickswitch in Obsidian MainVault' }),
}
