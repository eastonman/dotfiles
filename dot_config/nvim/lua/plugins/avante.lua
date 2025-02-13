return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = true,
        commit = "1726d3277831fb9476ec42b687eef3f54a73b410",
        opts = {
            provider = "openrouter_educated",
            auto_suggestions_provider = "openrouter_fast",
            vendors = {
                openrouter_educated = {
                    __inherited_from = 'openai',
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "deepseek/deepseek-r1-distill-llama-70b:nitro",
                    api_key_name = "OPENROUTER_API_KEY",
                    timeout = 15000,  -- Timeout in milliseconds
                    temperature = 0.2,
                    max_tokens = 4096,
                },
                openrouter_fast = {
                    __inherited_from = 'openai',
                    endpoint = "https://openrouter.ai/api/v1",
                    model = "meta-llama/llama-3.2-3b-instruct:nitro",
                    api_key_name = "OPENROUTER_API_KEY",
                    timeout = 5000,  -- Timeout in milliseconds
                    temperature = 0,
                    max_tokens = 4096,
                },
                together = {
                    __inherited_from = 'openai',
                    endpoint = "https://api.together.xyz/v1",
                    model = "deepseek-ai/DeepSeek-V3",
                    api_key_name = "TOGETHER_API_KEY",
                    timeout = 5000,  -- Timeout in milliseconds
                    temperature = 0,
                    max_tokens = 4096,
                },
            },
            behaviour = {
                auto_focus_sidebar = true,
                auto_suggestions = true,  -- Experimental stage
                auto_suggestions_respect_ignore = false,
                auto_set_highlight_group = true,
                auto_set_keymaps = true,
                auto_apply_diff_after_generation = true,
                support_paste_from_clipboard = false,
                minimize_diff = true,
            },
        },
        -- Build configuration
        build = "make",
        -- Alternative build command for Windows
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false",

        -- Dependencies
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            -- Optional dependencies
            "hrsh7th/nvim-cmp",  -- For command and mention autocompletion
            "nvim-tree/nvim-web-devicons",  -- For icons (or use echasnovski/mini.icons)
            {
                
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- Required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                "MeanderingProgrammer/render-markdown.nvim",
                dependencies = {
                    "nvim-treesitter/nvim-treesitter",
                    "echasnovski/mini.nvim",
                },
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    },
}
