return {
    "jedrzejboczar/nvim-dap-cortex-debug",
    dependencies = {
      -- Ensure C/C++ debugger is installed
      "mason-org/mason.nvim",
      opts = { ensure_installed = { "cortex-debug" } },
    },
    opts = function()
        require('dap').configurations.c = {
            {
                name = 'Debug 100-E-INT-X',
                type = 'cortex-debug',
                request = 'launch',
                interface = 'swd',
                servertype = 'jlink',
                serverpath = 'C:/Program Files/SEGGER/JLink/.exe',
                cwd = '${workspaceFolder}',
                executable = '${workspaceFolder}/Builds/Proto2/debug/100-E-INT-X/debug/100E_proto2_debug.elf',
                -- overrideLaunchCommands = {
                --     '-interpreter-exec console "monitor halt"',
                --     '-interpreter-exec console "monitor reset 0"',
                --     '-target-download',
                --     '-interpreter-exec console "monitor reset 6"',
                -- },
                device = 'MAX32672',
                runToEntryPoint = 'main',
                showDevDebugOutput = 'raw',
                svdFile = '${workspaceFolder}/Source/toolkits/maximsdk/CMSIS/Device/Maxim/MAX32672/Include/max32672.svd',
                gdbTarget = 'localhost:3333',
                rttConfig = {
                    enabled = false,
                }
            },
        }
        require('dap').configurations.cpp = {
            {
                name = 'Debug 100-E-INT-X',
                type = 'cortex-debug',
                request = 'launch',
                interface = 'swd',
                servertype = 'jlink',
                serverpath = 'C:/Program Files/SEGGER/JLink/JLinkGDBServerCL.exe',
                cwd = '${workspaceFolder}',
                executable = '${workspaceFolder}/Builds/Proto2/debug/100-E-INT-X/debug/100E_proto2_debug.elf',
                -- overrideLaunchCommands = {
                --     '-interpreter-exec console "monitor halt"',
                --     '-interpreter-exec console "monitor reset 0"',
                --     '-target-download',
                --     '-interpreter-exec console "monitor reset 6"',
                -- },
                device = 'MAX32672',
                runToEntryPoint = 'main',
                showDevDebugOutput = 'raw',
                svdFile = '${workspaceFolder}/Source/toolkits/maximsdk/CMSIS/Device/Maxim/MAX32672/Include/max32672.svd',
                gdbTarget = 'localhost:3333',
                rttConfig = {
                    enabled = false,
                }
            },
        }
    end,
}
