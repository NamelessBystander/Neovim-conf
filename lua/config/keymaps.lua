local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope find word" })

vim.keymap.set("n", "<leader>ph", ":NeovimProjectHistory <cr>", { desc = "Telescope find word" })
vim.keymap.set("n", "<leader>pl", ":NeovimProjectDiscover <cr>", { desc = "Telescope find word" })

vim.keymap.set("n", "<leader>fe", ":Explore<CR>", { desc = "Netrw" })
vim.keymap.set("n", "<leader>hm", ":Alpha<CR>", { desc = "Home page" })
