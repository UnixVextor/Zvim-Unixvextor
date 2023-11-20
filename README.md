<h1 align = "center">UnixVextor-Nvim</h1>

<div align = "center">

**[<kbd>  <br> Install <br>  </kbd>][Install]**
**[<kbd> <br> Uninstall <br>  </kbd>][Uninstall]**
**[<kbd> <br> Keymaps <br> </kbd>][Keymaps]**
**[<kbd> <br> Requirements <br> </kbd>][Requirements]**

[Install]: #installation
[Uninstall]: #uninstallation
[Keymaps]: #keymaps
[Requirements]: #requirements

</div>

## 🌟 Showcase

![demo1](../nvim/screenshot/demo1.png)
![demo2](../nvim/screenshot/demo2.png)
![demo3](,,/nvim/screenshot/demo3.png)
![demo4](../nvim/screenshot/demo4.png)

## ⚡️ Requirements

- [Neovim](https://github.com/neovim/neovim)

## 📦 Installation

**MacOS/Linux**

```bash
git clone https://github.com/UnixVextor/UnixVextor-Nvim ~/.config/nvim
```

**Windows**

```bash
git clone https://github.com/UnixVextor/UnixVextor-Nvim $HOME\AppData\Local\nvim
```

## ❌ Uninstallation

**MacOS/Linux**

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim/
rm -rf ~/.cache/nvim
```

**Windows**

```bash
rm -rf ~\AppData\Local\nvim
rm -rf ~\AppData\Local\nvim-data
```

## 🎹 Keymaps

### Plugins

| Key          | desciption                                   | mode   |
| ------------ | -------------------------------------------- | ------ |
| `<leader>`   | whichkey (keybinds popup (show up after 1s)) | normal |
| `<leader>ee` | neotree (side file explorer)                 | normal |
| `<leader>eg` | neotree git staus                            | normal |
| `<leader>ff` | telescope (find file, grep text, and more)   | normal |
| `<C-\>`      | toggle term                                  | normal |
| `<C-gi>`     | toggle term (lazygit)                        | normal |

### LSP

| Key          | desciption                | mode   |
| ------------ | ------------------------- | ------ |
| `K`          | hover information         | normal |
| `gR`         | show LSP references       | normal |
| `gD`         | go to declaration         | normal |
| `gd`         | show LSP definitions      | normal |
| `gi`         | show LSP implementations  | normal |
| `gt`         | show LSP type definitions | normal |
| `gt`         | show LSP type definitions | normal |
| `<leader>ca` | see available code action | normal |
| `<leader>D`  | show buffer diagnostics   | normal |
| `<leader>d`  | show line diagnostic      | normal |
| `[d`         | go to previous diagnostic | normal |
| `]d`         | go to next diagnostic     | normal |
| `<leader>rs` | restart LSP               | normal |

### Editing

| Key         | desciption     | mode          |
| ----------- | -------------- | ------------- |
| `<leader>/` | comment        | normal,visual |
| `gb`        | block visual   | visual        |
| `<A-j>`     | move line down | normal        |
| `<A-j>`     | move line up   | normal        |

### Completion

| Key                        | desciption           | mode   |
| -------------------------- | -------------------- | ------ |
| `<C-Space>`                | show completion menu | insert |
| `<CR>`                     | confirm              | insert |
| `<C-k>` `<Up>` `Tab`       | select previous item | insert |
| `<C-j>` `<Down>` `<S-Tab>` | select next item     | insert |
| `<C-d>`                    | scroll docs up       | insert |
| `<C-f`                     | scroll docs down     | insert |

### Windows

| Key         | desciption              | mode   |
| ----------- | ----------------------- | ------ |
| `<C-h>`     | go to left window       | normal |
| `<C-j>`     | go to lower window      | normal |
| `<C-k>`     | go to upper window      | normal |
| `<C-l>`     | go to right window      | normal |
| `<C-Up>`    | decrease windows height | normal |
| `<C-Down>`  | increase window height  | normal |
| `<C-Left>`  | decrease window width   | normal |
| `<C-Right>` | increase window width   | normal |
