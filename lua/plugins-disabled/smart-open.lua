return {
    {
        "danielfalk/smart-open.nvim",
        branch = "0.2.x",
        config = function()
          LazyVim.on_load("telescope.nvim", function()
            require("telescope").load_extension("smart_open")
          end)
        end,
        dependencies = {
            "kkharji/sqlite.lua",
            -- Only required if using match_algorithm fzf
            "nvim-telescope/telescope.nvim",
            "nvim-telescope/telescope-fzf-native.nvim",
			"nvim-telescope/telescope-fzy-native.nvim"
        },
        keys = {
            {
                "<leader>fa", function ()
                    require("telescope").extensions.smart_open.smart_open({ })
                end,
                desc = "Fuzzy Find Files"
            }
        }
    }
}
