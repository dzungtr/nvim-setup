local plugins = {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,  -- Load immediately
    priority = 1000,  -- High priority to load early
    config = function()
      require("nvim-web-devicons").setup({
        -- Enable colored icons
        color_icons = true,
        -- Use a default icon for files not matched
        default = true,
      })
    end,
  },
  
  -- Your other custom plugins go here...
}

return plugins
