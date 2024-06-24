return { -- Treesitter
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    config = require("nvim-treesitter.configs")

    config.setup({
      autoinstall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

