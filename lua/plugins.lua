return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'dense-analysis/ale'
  },
  {
    'ycm-core/youcompleteme',
    build='python3 install.py --all --force-sudo --verbose',
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {'nvim-lua/plenary.nvim'},
      {"nvim-telescope/telescope-fzf-native.nvim"},
    }
  },
  {
     "nvim-telescope/telescope-fzf-native.nvim",
     build = "make"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "f-person/git-blame.nvim",
  },
  {
	  "L3MON4D3/LuaSnip",
	  version = "v2.*",
	  build = "make install_jsregexp"
  },
  {
    'nanozuki/tabby.nvim',
    dependencies= {' nvim-tree/nvim-web-devicons' }
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
}
