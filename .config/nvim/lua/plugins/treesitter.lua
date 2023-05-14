local Plugin = {'nvim-treesitter/nvim-treesitter'}
Plugin.version = false
Plugin.event = { "BufReadPost", "BufNewFile" }
Plugin.build = ":TSUpdate"
Plugin.dependencies = {
  {'nvim-treesitter/nvim-treesitter-textobjects'}
}
-- See :help nvim-treesitter-modules
Plugin.opts = {
  highlight = {
    enable = true,
  },
  -- :help nvim-treesitter-textobjects-modules
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
      'bash',
      'go',
      'html',
      'json',
      'lua',
      'luadoc',
      'luap',
      'markdown',
      'markdown_inline',
      'python',
      'query',
      'regex',
      'rust',
      'terraform',
      'tsx',
      'typescript',
      'vim',
      'vimdoc',
      'yaml',
  },
}

function Plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return Plugin
