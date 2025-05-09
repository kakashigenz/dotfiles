return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "mason-org/mason.nvim",
    tag = "v1.11.0",
    config = true,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    tag = "v1.32.0",
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "html", "cssls" },
      automatic_installation = true,
      handlers = {
        function(serverName)
          local onAttach = function(client, bufnr)
            -- Định nghĩa các phím tắt
            local opts = { noremap = true, silent = true, buffer = bufnr }

            -- Điều hướng
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

            -- Thông tin và tài liệu
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

            -- Các hành động
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

            -- Định dạng code
            vim.keymap.set("n", "<leader>f", function()
              vim.lsp.buf.format({ async = true })
            end, opts)

            -- Diagnostic
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
            vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
          end

          local capabilities = require("cmp_nvim_lsp").default_capabilities()

          require("lspconfig")[serverName].setup({
            on_attach = onAttach,
            capabilities = capabilities,
          })
        end,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
  },
}
