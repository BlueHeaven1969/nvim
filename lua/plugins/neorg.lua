return {
	{
		"nvim-neorg/neorg",
		lazy = false,
		build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {
						config = {
							folds = false,
						},
					}, -- Adds pretty icons to your documents
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/Documents/NeoNotes",
							},
							default_workspace = "notes",
						},
					},
				},
				disable = {
					["core.norg.qol.fold"] = true,
				},
			})
		end,
		keys = {
			{ "<leader>ni", "<cmd>Neorg index<cr>", desc = "Index" },
			{ "<leader>njt", "<cmd>Neorg journal today<cr>", desc = "Journal Today" },
			{ "<leader>njT", "<cmd>Neorg journal tempplate<cr>", desc = "Journal Template" },
		},
	},
}

