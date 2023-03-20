require('nvim-tree').setup{ }
vim.api.nvim_create_autocmd('BufWinEnter', {
  callback = function(tbl)
    if vim.bo[tbl.buf].filetype == 'NvimTree' then
      require'bufferline.api'.set_offset(31, 'FileTree')
    end
  end
})

vim.api.nvim_create_autocmd({'BufWinLeave', 'BufWipeout'}, {
  callback = function(tbl)
    if vim.bo[tbl.buf].filetype == 'NvimTree' then
      require'bufferline.api'.set_offset(0)
    end
  end
})
