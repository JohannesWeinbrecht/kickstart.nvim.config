-- Many colorschemes can be found under:
-- https://github.com/topics/neovim-colorscheme

return {
  {
    'ellisonleao/gruvbox.nvim',
    opts = ...,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  {
    'jacoborus/tender.vim',
    config = function()
      vim.cmd.colorscheme 'tender'
    end,
  },
  {
    'nuvic/flexoki-nvim',
    --name = 'flexoki',
    config = function()
      vim.cmd.colorscheme 'flexoki'
    end,
  },
}
