# **Neovim-conf**
My Neovim config utilising lazy.nvim; it's my first one after going from a preconfigured distro to trying to manage it completely with NixOS, so it's going to be **messy**. At some point, I'll just rewrite all of it, I'm sure, but for now, this is what I'm using.


<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/a2945326-6921-4f08-9e00-52fe86ec6f2b" />


## **File Structure**
All plugin configs are added to the `lua/plugins` folder and are automatically added with lazy. Keybindings are configured in `config/keymaps.lua`, and default Vim options outside of lazy.nvim are configured in `config/options.lua`.

```
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── autocmd.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── alpha.lua
│       ├── autopairs.lua
│       ├── blinkcmp.lua
│       ├── conform.lua
│       ├── diagnostic.lua
│       ├── lspconfig.lua
│       ├── telescope.lua
│       ├── theme.lua
│       └── treesitter.lua
└── README.md

```
---
## **Prerequisites**
#### **conform**
- stylua
- astyle

#### **lsp**
- ccls
- lua-language-server (lua-lsp)

#### **general**
- ripgrep
- fd
- nerdfonts

---
## **Plugins**
- goolord/alpha-nvim
- windwp/nvim-autopairs
- saghen/blink.cmp
- stevearc/conform.nvim
- sontungexpt/better-diagnostic-virtual-text
- neovim/nvim-lspconfig
- nvim-telescope/telescope.nvim
- nvim-treesitter/nvim-treesitter

---
## **Notes to self**
This guy is pretty good to rewatch and implement at least one of the things he is talking about each time: [Neovim tips for enhanced workflow](https://www.youtube.com/watch?v=LaIa1tQFOSY&t=303s). 

To explore new plugins, this repo has a list of common ones, sorted by function: [awesome-neovim](https://github.com/rockerBOO/awesome-neovim).
