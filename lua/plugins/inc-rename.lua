return {
    {
        "smjonas/inc-rename.nvim",
        dependencies = {
            "folke/noice.nvim"
        },
        config = function()
            require("inc_rename").setup()
            require("noice").setup({
                presets = { inc_rename = true }
            })
            -- require("inc_rename").setup({
            --     input_buffer_type = "dressing"
            -- })
        end,
        keys = {
            {
                "<Leader>cq", ":IncRename ", desc = "Inc Rename"
            }
        }
    }
}
