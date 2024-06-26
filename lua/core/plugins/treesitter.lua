return { -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    config = require("nvim-treesitter.configs")

    config.setup({
      ensure_installed = { "c_sharp" },
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

