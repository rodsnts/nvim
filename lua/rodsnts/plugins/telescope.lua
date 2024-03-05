return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.5",

  dependencies = {
      "nvim-lua/plenary.nvim"
  },

  config = function()
    require('telescope').setup({
      pickers = {
        find_files = {
          hidden = true
        }
      },
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" }
      },
      extensions = {
        file_browser = {
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              -- your custom normal mode mappings
            },
          },
        },
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
    vim.api.nvim_set_keymap(
      "n",
      "<leader>fb",
      ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
      { noremap = true }
    )
    vim.keymap.set('n', '<leader>b', builtin.buffers, {})
  end
}

