return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'monokai-pro',
				tabline = {
					lualine_z = {
						"tabs",
						cond = function ()
							return #vim.fn.gettabinfo() > 1
						end
					}
				}
      }
    })
  end
}
