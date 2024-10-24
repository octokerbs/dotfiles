return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- Disable specific inlay hints from `gopls`
              hints = {
                assignVariableTypes = false, -- Disable inlay hints for variable types
                compositeLiteralFields = false, -- Disable inlay hints for struct fields
                compositeLiteralTypes = false, -- Disable inlay hints for struct types
                constantValues = false, -- Disable inlay hints for constant values
                functionTypeParameters = false, -- Disable inlay hints for function type parameters
                parameterNames = false, -- Disable inlay hints for parameter names
                rangeVariableTypes = false, -- Disable inlay hints for range variable types
              },
            },
          },
        },
      },
    },
  },
}
