return {
  "nyoom-engineering/oxocarbon.nvim",
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
  config = function()
    vim.opt.background = "dark"
    vim.cmd("colorscheme oxocarbon")
  end
}
