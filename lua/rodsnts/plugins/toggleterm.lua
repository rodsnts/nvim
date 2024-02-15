return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {},

  config =  function ()
    require('toggleterm').setup({
      direction = 'float',
      shell = "pwsh.exe",
      float_opts = {
        border = 'curved',
      }
    })

    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
  end
}
