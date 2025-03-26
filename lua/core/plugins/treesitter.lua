return { -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.install").prefer_git = true
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "go", "html", "c_sharp", "typescript", "javascript", "tsx", "swift", "terraform", "python" },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = false },
    })
  end
}

