local nvim_lsp = require 'lspconfig'

local custom_attach = function(_, bufnr)
end

local border = {
  {"🭽", "FloatBorder"},
  {"▔", "FloatBorder"},
  {"🭾", "FloatBorder"},
  {"▕", "FloatBorder"},
  {"🭿", "FloatBorder"},
  {"▁", "FloatBorder"},
  {"🭼", "FloatBorder"},
  {"▏", "FloatBorder"},
}

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

-- config html
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--local servers = {tsserver', 'vimls', 'jsonls', 'html', 'pyright'}
local servers = { 'svelte', 'html', 'vuels', 'yamlls', 'cssls', 'jsonls', 'pyright', 'tsserver' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = custom_attach,
        capabilities = capabilities,
        handlers = handlers,
        flags = {
          debounce_text_changes = 150,
        }
    }
end

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Utility functions for compe and luasnip
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col '.' - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' then
    return true
  else
    return false
  end
end

-- function PrintDiagnostics(opts, bufnr, line_nr, client_id)
--   opts = opts or {}
-- 
--   bufnr = bufnr or 0
--   line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
-- 
--   local line_diagnostics = vim.lsp.diagnostic.get_line_diagnostics(bufnr, line_nr, opts, client_id)
--   if vim.tbl_isempty(line_diagnostics) then return end
-- 
--   local diagnostic_message = ""
--   for i, diagnostic in ipairs(line_diagnostics) do
--     diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
--     print(diagnostic_message)
--     if i ~= #line_diagnostics then
--       diagnostic_message = diagnostic_message .. "\n"
--     end
--   end
--   vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
-- end
-- 
-- vim.cmd [[ autocmd CursorHold * lua PrintDiagnostics() ]]
