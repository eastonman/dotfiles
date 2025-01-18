return {
    {
        "https://github.com/lukas-reineke/indent-blankline.nvim",
        event = { "VeryLazy" },
        config = function()
            require("ibl").setup()
        end,
    },
    {
        "https://github.com/windwp/nvim-autopairs",
        event = "InsertEnter", -- Only load when you enter Insert mode
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "https://github.com/tpope/vim-sleuth",
        event = { "BufReadPost", "BufNewFile" }, -- Load after your file content
    },
    {
        "https://github.com/farmergreg/vim-lastplace",
        event = "BufReadPost",
    },
    {
        -- toggle comments using shortcuts
        'numToStr/Comment.nvim',
        event = { "VeryLazy" },
        opts = {
            -- add any options here
        }
    }
}
