local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- find more on github on formatting in null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- find more on github on diagnostics in null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.black,
  formatting.stylua,
  formatting.clang_format,
  formatting.latexindent,

  diagnostics.flake8,
  diagnostics.eslint,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    end
  end,
}
