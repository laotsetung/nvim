return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
    -- TreeSitter Config
    local config = require("nvim-treesitter.configs")
    config.setup({
        -- ensure_installed = {"lua", "javascript", "haskell", "python", "ruby"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    })
    end
}
