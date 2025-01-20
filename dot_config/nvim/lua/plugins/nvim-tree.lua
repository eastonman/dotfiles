return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },
        }
        vim.keymap.set('n', '<M-m>', ':NvimTreeToggle<CR>')
    end,
}
