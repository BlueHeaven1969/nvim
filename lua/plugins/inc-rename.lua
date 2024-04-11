return {
    {
        "smjonas/inc-rename.nvim",
        dependencies = {
            "stevearc/dressing.nvim"
        },
        opts = {},
        -- config = function()
        --     require("inc_rename").setup({
        --         input_buffer_type = "dressing"
        --     })
        -- end,
        keys = {
            {
                "<Leader>cq", ":IncRename ", desc = "Inc Rename"
            }
        }
    }
}
