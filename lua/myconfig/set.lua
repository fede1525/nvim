vim.opt.nu = true
vim.opt.relativenumber = true

vim.cmd 'colorscheme habamax'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.tabline = "%!v:lua.my_tabline()"
vim.opt.showmode = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.termguicolors = true

function _G.my_tabline()
  local s = ""
  for tab = 1, vim.fn.tabpagenr('$') do
    local winnr = vim.fn.tabpagewinnr(tab)
    local bufnr = vim.fn.tabpagebuflist(tab)[winnr]
    local bufname = vim.fn.bufname(bufnr)
    local filename = vim.fn.fnamemodify(bufname, ":t")
    if filename == "" then
      filename = "[No Name]"
    end

    -- Highlight the active tab
    if tab == vim.fn.tabpagenr() then
      s = s .. "%#TabLineSel#"
    else
      s = s .. "%#TabLine#"
    end

    -- Display tab number and filename
    s = s .. " " .. tab .. ": " .. filename .. " %T"
  end

  -- Fill empty space in tabline
  s = s .. "%#TabLineFill#"
  return s
end
