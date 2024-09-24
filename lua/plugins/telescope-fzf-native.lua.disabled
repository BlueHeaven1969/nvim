if vim.loop.os_uname().sysname == "Windows_NT" then
    return {
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
            enabled = vim.fn.executable("cmake") == 1,
        },
    }
else
    return {}
end
