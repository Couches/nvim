return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    auto_install = true,
    config = function()
      require("mason").setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    }
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local configs = require('lspconfig.configs')
      local util = require('lspconfig.util')

      configs.protobuf_language_server = {
				default_config = {
					cmd = { '/home/whenp/go/bin/protobuf-language-server' },
					filetypes = { 'proto', 'cpp' },
					root_dir = util.root_pattern('.git'),
					single_file_support = true,
				}
      }
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.protobuf_language_server.setup({
        capabiblities = capabilities,
      })


			lspconfig.jsonls.setup({
				capabiblities = capabilities,
			})
    end
  }
}
