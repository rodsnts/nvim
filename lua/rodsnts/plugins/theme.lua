return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.opt.background = "dark"
    require("catppuccin").setup({
     transparent_background = false,
    })

    vim.cmd("colorscheme catppuccin-mocha")
  end
}
