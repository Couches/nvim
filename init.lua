require("core.keymaps")
require("core.vim-settings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { -- One Dark
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = false,
    priority = 1000,
  }, 

  { -- Telescope
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },

  { -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate"
  },

  { -- Neo Tree
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    }
  },
}

local opts = {}

 -- Package Configuration
telescope_builtin = require("telescope.builtin")
config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "lua", "javascript", "go" },
  highlight = { enable = true },
  indent = { enable = true },
})

 -- Packages Setup
require("lazy").setup(plugins, opts)
require("onedark").setup()



vim.cmd("colorscheme onedark")
