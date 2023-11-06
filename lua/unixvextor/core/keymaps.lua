local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- Nvim Tree
keymap("n", "<leader>ee", "<CMD>Neotree toggle<CR>", opts)
keymap("n", "<leader>eg", "<CMD>Neotree git_status<CR>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Toggle Term
function _G.set_terminal_keymaps()
  local opts_term = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts_term)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts_term)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts_term)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts_term)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts_term)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts_term)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts_term)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
