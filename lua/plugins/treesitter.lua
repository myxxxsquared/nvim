require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "vim", "help", "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust", "markdown", "markdown_inline" }, -- one of "all" or a list of languages

    highlight = { enable = true },
    indent = { enable = true },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
