return {
  "VidocqH/lsp-lens.nvim",
  config = function()
    local SymbolKind = vim.lsp.protocol.SymbolKind

    require('lsp-lens').setup({
      enable = true,
      include_declaration = false,
      sections = {
        definition = false,
        references = true,
        implements = true,
      },
      target_symbol_kinds = { SymbolKind.Function, SymbolKind.Method, SymbolKind.Interface },
      wrapper_symbol_kinds = { SymbolKind.Class, SymbolKind.Struct },
    })
  end
}
