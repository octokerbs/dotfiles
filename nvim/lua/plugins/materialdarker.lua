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
        Macro = { fg = "#82aaff" },
      },
    })

    vim.cmd("colorscheme material")
    vim.api.nvim_set_hl(0, "@keyword", { fg = "#b384d2" })
    vim.api.nvim_set_hl(0, "@type", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "@type.definition", { fg = "#ffcb6a" })
    vim.api.nvim_set_hl(0, "@variable.parameter", { fg = "#f78c6c" })

    -- Go
    vim.api.nvim_set_hl(0, "@lsp.typemod.variable.readonly.go", { fg = "#f78c6c" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.type.definition.go", { fg = "#ffcb6b" })

    -- C++
    vim.api.nvim_set_hl(0, "@lsp.typemod.class.globalScope.cpp", { fg = "#ffcb6b" })
    vim.api.nvim_set_hl(0, "@type.builtin.cpp", { fg = "#b384d2" })
    vim.api.nvim_set_hl(0, "@keyword.directive", { fg = "#82aaff" })
    vim.api.nvim_set_hl(0, "@constant.macro", { fg = "#ffcb6b" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.class.definition.cpp", { fg = "#82aaff" })
    vim.api.nvim_set_hl(0, "@boolean.cpp", { fg = "#b384d2" })
    vim.api.nvim_set_hl(0, "@character.cpp", { fg = "#c3e88d" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.property.classScope.cpp", { fg = "#eeffff" })
    vim.api.nvim_set_hl(0, "@constant", { fg = "#f78c6c" })
    vim.api.nvim_set_hl(0, "@lsp.typemod.class.deduced.cpp", { fg = "#b384d2" })
  end,
}
