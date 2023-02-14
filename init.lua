local plugin_configs = {
    "plugins",
    "keymaps",
    "monokai",
    "lualine",
    "nvim-tree",
    "nvim-tmux-navigation",
    "nvim-treesitter",
    "lsp",
    "nvim-autopairs",
    "bufferline",
    "git-signs",
    "telescope",
    "Comment",
    "toggleterm",
    "rust-tools",
    "whichkey",
    "leap-nvim",
    "options",
}

for _, plugin_config in ipairs(plugin_configs) do
    local package_name = "myxxxsquared." .. plugin_config
    local status_ok, value = pcall(require, package_name)
    if not status_ok then
        print("Config failed: " .. plugin_config .. "\nErr:" .. value)
    end
end
