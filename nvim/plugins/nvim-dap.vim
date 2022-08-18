nnoremap <silent> <A-5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <A-4> <Cmd>lua require'dap'.terminate()<CR>
nnoremap <silent> <A-0> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <A-9> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <A-8> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>t <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>T <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>

lua << EOF
 require("dap-vscode-js").setup({
   debugger_path = "path/of/vscode-js-debug", -- vscode-js-debug is project 
   adapters = {'pwa-node'},
 })

for _, language in ipairs({ "typescript", "javascript" }) do
   require("dap").configurations[language] = {}
end

require('dap.ext.vscode').load_launchjs(nil, { ['pwa-node'] = { 'typescript', 'javascript' } })

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⛔', texthl='', linehl='', numhl=''})

EOF
