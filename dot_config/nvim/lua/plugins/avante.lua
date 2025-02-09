return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = true,
        version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
        opts = {
            provider = "openai",
            auto_suggestions_provider = "openai",
            openai = {
                endpoint = "https://api.deepseek.com",
                model = "deepseek-chat",
                timeout = 30000, -- Timeout in milliseconds
                temperature = 0,
                max_tokens = 4096,
            },
            behaviour = {
                auto_focus_sidebar = true,
                auto_suggestions = true, -- Experimental stage
                auto_suggestions_respect_ignore = false,
                auto_set_highlight_group = true,
                auto_set_keymaps = true,
                auto_apply_diff_after_generation = true,
                support_paste_from_clipboard = false,
                minimize_diff = true,
            },
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = "make",
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below dependencies are optional,
            "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
            "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                -- Make sure to set this up properly if you have lazy=true
                'MeanderingProgrammer/render-markdown.nvim',
                dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    }
}
