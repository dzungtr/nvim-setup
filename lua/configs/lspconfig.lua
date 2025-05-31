require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "tflint", "gopls", "dockerls", "helm_ls", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
