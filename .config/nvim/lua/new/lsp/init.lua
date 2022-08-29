local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "new.lsp.lsp-installer"
require("new.lsp.handlers").setup()
require "new.lsp.null-ls"
require "new.lsp.lspsaga"
require "new.lsp.lsplines"
