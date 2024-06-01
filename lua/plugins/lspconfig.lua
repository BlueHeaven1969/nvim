return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = { mason = false },
            },
            inlay_hints = { enabled = false },
        },
    },
}
