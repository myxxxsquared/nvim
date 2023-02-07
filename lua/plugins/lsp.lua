require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "sumneko_lua",
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--require("lsp-format").setup {}

require("lspconfig").sumneko_lua.setup {
    capabilities = capabilities,
    --    on_attach = require("lsp-format").on_attach
}
