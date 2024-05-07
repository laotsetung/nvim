-- Arquivo de configurações do VIM
-- Para usar comandos vim num arquivo lua usamos : vim.cmd("...")

-- vim.cmd("set expandtab") -- Inseri espaço em vez de um tab
-- vim.cmd("set tabstop=3") -- as proximas tres linhas definem tab como 4 espaços
-- vim.cmd("set softtabstop=3")
-- vim.cmd("set shiftwidth=3")
-- vim.cmd("set ignorecase") -- Ignora case sensitive nas buscas
-- vim.cmd("set scrolloff=42") -- Mantem o cursor com 42 linhas acima e abaixo
-- vim.cmd("set signcolumn=yes") -- Linha a esquerda
-- vim.cmd("set nu") -- Numeros das linhas
-- vim.cmd("set splitright") -- Cria as janelas verticais a direita

local opt = vim.opt

-- Numero das linhas
opt.number = true          -- Numeros das linhas
opt.relativenumber = true  -- Numeros relativos da linha

-- Tab e Identação
opt.expandtab = true       -- Expad tab to espaces
opt.autoindent = true      -- Auto identação (Novo linha na mesma identação da anterior)
opt.tabstop = 3
opt.shiftwidth = 3

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.splitright = true


-- Outros
opt.scrolloff = 42
opt.cursorline = true
opt.termguicolors = true
-- opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"


-- Atalhos de Teclado
vim.g.mapleader = " "

local keymap = vim.keymap

--sair do modo Insert
keymap.set("i", "jk", "<Esc>", { desc = "Sair do modo Insert com jk" })

-- Somar e Subtrair
keymap.set("n", "+", "<C-a>", { desc = "Adicionar a um numero" })
keymap.set("n", "-", "<C-x>", { desc = "Subtrair um número" })

-- Resize das divisões de um buffer
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Buffers
keymap.set("n", "<leader>n", "<cmd>tabnew<CR>", {})
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {})
-- keymap.set("n", "<C-tab>", ":tabn<Return>", {})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {})
keymap.set("n", "<tab>", ":tabn<Return>", {})  -- Proxima aba 
keymap.set("n", "<s-tab>", ":tabp<Return>", {}) -- Aba anterior
-- keymap.set("n", "<C-w>x", ":tabclose<Return>", {})        -- Fechar Aba


keymap.set("n", "<C-w>q", ":q<CR>", {})      -- Ctrl+w+q = :q
keymap.set("n", "<C-w>w", ":w<Return>", {})  -- Ctrl+w+w = :w

keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

keymap.set("n", "<leader>sp", ":sp<Return>",{})
keymap.set("n", "<leader>sv", ":vs<Return>",{})

keymap.set("n", "==", "ggvG=", {})

   -- Commentary
keymap.set("n", ";;", ":Commentary<Return>", {})
keymap.set("v", ";;", ":Commentary<Return>", {})
keymap.set("i", ";;", "<Esc>:Commentary<CR>i", {})

-- LSP
vim.keymap.set('n', "K", vim.lsp.buf.hover, {})
vim.keymap.set('n', "gd", vim.lsp.buf.definition, {})
vim.keymap.set('n', "<leader>ca", vim.lsp.buf.code_action, {})
