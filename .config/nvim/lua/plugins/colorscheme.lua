local Plugin = {'catppuccin/nvim'}
Plugin.name = 'catppuccin'
Plugin.lazy = false
Plugin.priority = 1000

function Plugin.init()
  vim.cmd([[colorscheme catppuccin]])
end

return Plugin
