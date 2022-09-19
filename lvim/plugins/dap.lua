lvim.builtin.dap.active = true

require("dap-vscode-js").setup({
  debugger_path = os.getenv("HOME") .. "/.local/share/lunarvim/site/pack/packer/opt/vscode-js-debug",
  adapters = { 'pwa-node' },
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {}
end

require('dap.ext.vscode').load_launchjs(nil, { ['pwa-node'] = { 'typescript', 'javascript' } })
