return {
  "marko-cerovac/material.nvim",

  config = function()
    vim.g.material_style = "darker"

    require("material").setup({

      -- Apply theme to this plugins
      plugins = {
        "gitsigns",
        "nvim-tree",
      },

      -- Disable some ui elements
      disable = {
        colored_cursor = false,
        background = false,
      },

      -- Override colorscheme colors
      custom_colors = function(colors)
        colors.editor.bg = "#1e1e1e"
      end,

      -- Override UI elements colors
      custom_highlights = {
        LineNr = { fg = "#ff79c6" }, -- Line Number color
        NonText = { bg = "#1e1e1e" }, -- Background for "non-text" parts of the window (e.g. end of buffer)
        NormalNC = { bg = "#1e1e1e" }, -- Non-current window background
      },
    })

    vim.cmd("colorscheme material")
  end,
}
