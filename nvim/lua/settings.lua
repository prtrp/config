-- Imposta tab a 4 spazi
vim.opt.tabstop = 4       -- Visualizza i tab come 4 spazi
vim.opt.shiftwidth = 4    -- Indentazione automatica di 4 spazi
vim.opt.expandtab = true  -- Converte i tab in spazi
vim.opt.softtabstop = 4   -- Comportamento dei tab come 4 spazi durante l'editing

vim.opt.relativenumber = true;

-- Opzionale: applica solo per certi tipi di file
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"python", "c", "cpp", "java", "rust"},
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end
})
