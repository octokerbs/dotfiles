return {
  "marko-cerovac/material.nvim",

  config = function()
    vim.g.material_style = "darker"

    require("material").setup({

      contrast = {
        cursor_line = true,
      },

      -- Apply theme to these plugins
      plugins = {
        "gitsigns",
        "nvim-tree",
      },

      -- Disable some UI elements
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
        LineNr = { fg = "#424242" }, -- Line Number color
        NonText = { bg = "#1e1e1e" }, -- Background for "non-text" parts of the window (e.g. end of buffer)
        NormalNC = { bg = "#1e1e1e" }, -- Non-current window background
        Comment = { fg = "#616161" },
        Identifier = { fg = "#eeffff" },
        String = { fg = "#c3e88d" },
      },
    })

    vim.cmd("colorscheme material")
    vim.api.nvim_set_hl(0, "@keyword", { fg = "#b384d2" })
    vim.api.nvim_set_hl(0, "@type", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "@type.definition", { fg = "#ffcb6a" })
    vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#f78c6c" })

    -- New Age
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly.go", { fg = "#f78c6c" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.type.definition.go", { fg = "#ffcb6b" })
  end,
}
