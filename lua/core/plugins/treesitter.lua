return { -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "go" },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

