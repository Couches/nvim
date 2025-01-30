return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function()
        require("hover.providers.lsp")
        require("hover.providers.dictionary")
        require("hover.providers.man")
        require("hover.providers.diagnostic")
      end,
      preview_opts = {
        border = 'single'
      },
      title = true
    })
  end
}
