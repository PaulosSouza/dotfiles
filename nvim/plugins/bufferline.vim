lua << EOF
diagnostics_indicator = function(count, level, diagnostics_dict, context)
  local s = " "
  for e, n in pairs(diagnostics_dict) do
    local sym = e == "error" and " "
      or (e == "warning" and " " or "" )
    s = s .. n .. sym
  end
  return s
end

require("bufferline").setup{
  diagnostics_indicator=diagnostics_indicator
}
EOF

nnoremap <silent><leader>[ :BufferLineCycleNext<CR>
nnoremap <silent><leader>] :BufferLineCyclePrev<CR>
