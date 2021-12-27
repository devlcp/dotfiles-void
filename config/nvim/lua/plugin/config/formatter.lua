require('formatter').setup({
    filetype = {
        javascript = {
          -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
                    stdin = true
                }
            end
        },
        typescriptreact = {
          -- prettier
            function()
                return {
                    exe = "prettier",
                    args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
                    stdin = true
                }
            end
        },
        sh = {
            -- Shell Script Formatter
            function()
                return {
                    exe = "shfmt",
                    args = { "-i", 2 },
                    stdin = true,
                }
            end,
        },
    }
})
