return { -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      telescope_builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
