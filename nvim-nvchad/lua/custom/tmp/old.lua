-- {
--     "mfussenegger/nvim-dap",
--     lazy = false,
--     config = function()
--       overrides.dap.setup()
--       local dap = require "dap"
--       if not dap.adapters["pwa-node"] then
--         require("dap").adapters["pwa-node"] = {
--           type = "server",
--           host = "localhost",
--           port = "${port}",
--           executable = {
--             command = "node",
--             args = {
--               require("mason-registry").get_package("js-debug-adapter"):get_install_path()
--                 .. "/js-debug/src/dapDebugServer.js",
--               "${port}",
--             },
--           },
--         }
--       end
--       for _, language in ipairs { "typescript", "javascript" } do
--         if not dap.configurations[language] then
--           dap.configurations[language] = {
--             {
--               type = "pwa-node",
--               request = "launch",
--               name = "Launch file",
--               program = "${file}",
--               cwd = "${workspaceFolder}",
--             },
--             {
--               type = "pwa-node",
--               request = "attach",
--               name = "Attach",
--               processId = require("dap.utils").pick_process,
--               cwd = "${workspaceFolder}",
--             },
--           }
--         end
--       end
--
--       utils.load_mappings "debugger"
--     end,
--   },
--
--   {
--     "rcarriga/nvim-dap-ui",
--     lazy = false,
--     config = function()
--       overrides.dap_ui.setup()
--     end,
--   },
--
--   {
--     "mfussenegger/nvim-dap",
--     lazy = false,
--     dependencies = {
--       "mxsdev/nvim-dap-vscode-js",
--       {
--         "rcarriga/nvim-dap-ui",
--         config = function()
--           overrides.dap_ui.setup()
--         end,
--       },
--       {
--         "microsoft/vscode-js-debug",
--         build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
--       },
--     },
--     config = function()
--       overrides.dap.setup()
--       require("dap-vscode-js").setup(debuggers.vscode_js)
--
--       local exts = {
--         "javascript",
--         "typescript",
--         "javascriptreact",
--         "typescriptreact",
--       }
--
--       for _, language in ipairs(exts) do
--         require("dap").configurations[language] = {
--           {
--             -- use nvim-dap-vscode-js's pwa-node debug adapter
--             type = "pwa-node",
--             -- attach to an already running node process with --inspect flag
--             -- default port: 9222
--             request = "attach",
--             -- allows us to pick the process using a picker
--             processId = require("dap.utils").pick_process,
--             -- name of the debug action you have to select for this config
--             name = "Attach debugger to existing `node --inspect` process",
--             -- for compiled languages like TypeScript or Svelte.js
--             sourceMaps = true,
--             -- resolve source maps in nested locations while ignoring node_modules
--             resolveSourceMapLocations = {
--               "${workspaceFolder}/**",
--               "!**/node_modules/**",
--             },
--             -- path to src in vite based projects (and most other projects as well)
--             cwd = "${workspaceFolder}",
--             -- we don't want to debug code inside node_modules, so skip it!
--             skipFiles = { "${workspaceFolder}/node_modules/**/*.js" },
--           },
--         }
--       end
--
--       require("dap.ext.vscode").load_launchjs(nil, {
--         ["pwa-node"] = exts,
--         ["node"] = exts,
--         ["node-terminal"] = exts,
--       })
--
--       utils.load_mappings "debugger"
--     end,
--   },
--
--   {
--     "mxsdev/nvim-dap-vscode-js",
--     lazy = false,
--     opts = debugers.vscode_js,
--     dependencies = {
--       "microsoft/vscode-js-debug",
--       build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
--     },
--     config = function(_, opts)
--       require("dap-vscode-js").setup(opts)
--
--       local exts = {
--         "javascript",
--         "typescript",
--         "javascriptreact",
--         "typescriptreact",
--       }
--
--       for _, language in ipairs(exts) do
--         require("dap").configurations[language] = {
--           {
--             name = "Launch",
--             type = "pwa-node",
--             request = "launch",
--             program = "${file}",
--             rootPath = "${workspaceFolder}",
--             cwd = "${workspaceFolder}",
--             sourceMaps = true,
--             skipFiles = { "<node_internals>/**" },
--             protocol = "inspector",
--             console = "integratedTerminal",
--           },
--           {
--             type = "node",
--             request = "attach",
--             name = "Attach",
--             processId = require("dap.utils").pick_process,
--             cwd = "${workspaceFolder}",
--           },
--         }
--       end
--
--       require("dap.ext.vscode").load_launchjs(nil, {
--         ["pwa-node"] = exts,
--         ["node"] = exts,
--         ["node-terminal"] = exts,
--       })
--
--       utils.load_mappings "debugger"
--     end,
--   }
--
--    {
  --   "mxsdev/nvim-dap-vscode-js",
  --   dependencies = {
  --     {
  --       "microsoft/vscode-js-debug",
  --       build = "npm ci --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
  --     },
  --     {
  --       "rcarriga/nvim-dap-ui",
  --       config = function()
  --         overrides.dap_ui.setup()
  --       end,
  --     },
  --     {
  --       "mfussenegger/nvim-dap",
  --       config = function()
  --         require("dap-vscode-js").setup {
  --           node_path = "node",
  --           adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  --           debugger_path = "/home/paulosouza/.local/share/nvim/lazy/vscode-js-debug",
  --         }
  --
  --         local exts = {
  --           "javascript",
  --           "typescript",
  --           "javascriptreact",
  --           "typescriptreact",
  --         }
  --         for _, language in ipairs(exts) do
  --           require("dap").configurations[language] = {
  --             {
  --               type = "pwa-node",
  --               request = "launch",
  --               name = "Launch file",
  --               program = "${file}",
  --               cwd = "${workspaceFolder}",
  --             },
  --             {
  --               type = "node-terminal",
  --               request = "launch",
  --               name = "Run npm run dev",
  --               command = "npm run dev",
  --             },
  --             {
  --               type = "pwa-node",
  --               request = "attach",
  --               name = "Attach",
  --               cwd = "${workspaceFolder}",
  --               sourceMaps = true,
  --               resolveSourceMapLocations = {
  --                 "${workspaceFolder}/**",
  --                 "!**/node_modules/**",
  --               },
  --               skipFiles = {
  --                 "<node_internals>/**",
  --               },
  --               restart = true,
  --               -- sourceMapPathOverrides = {
  --               --   ["webpack:///./src/*"] = "${workspaceFolder}/src/*",
  --               --   ["webpack:///src/*"] = "${workspaceFolder}/src/*",
  --               --   ["webpack:///*"] = "*",
  --               -- },
  --             },
  --           }
  --         end
  --
  --         overrides.dap.setup()
  --         utils.load_mappings "debugger"
  --       end,
  --     },
  --   },
  --   ft = { "javascript", "typescript" },
  -- },
