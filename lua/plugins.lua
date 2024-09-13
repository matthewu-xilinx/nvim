return {
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
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
    version = "*"
  },

  {
    "f-person/git-blame.nvim",
  },
  {
	  "L3MON4D3/LuaSnip",
	  version = "v2.*",
	  build = "make install_jsregexp"
  }
}
