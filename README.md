# Configuration Files

This repository contains personal configuration files for Neovim and tmux.

## Folders

### Neovim Configuration (`neovim_config/`)
A modular Neovim setup using Lua.
- **Entry point:** `init.lua`
- **LSP Support:** Pre-configured for `clangd`, `lua_ls`, and `pyright`.
- **Plugins:** Managed by `lazy.nvim`, including Telescope, Treesitter, Neo-tree, and Mason.
- **UI/UX:** Enhanced with Lualine, Gitsigns, and Toggleterm.

### Tmux Configuration (`tmux_config/`)
Configuration for the tmux terminal multiplexer.

**N.B.:** The `tmux.conf` file provided here must be renamed to **`.tmux.conf`** (adding the leading dot) when placed in your configuration directory.

#### Configuration Locations
Per tmux documentation, the tool searches for configurations in these standard paths:
1.  **`~/.tmux.conf`**: The default user-level configuration path.
2.  **`~/.config/tmux/tmux.conf`**: Supported in tmux 3.1 and later (XDG compliant).
3.  **`/etc/tmux.conf`**: The system-wide configuration path.

To apply changes to a running session:
```bash
tmux source-file ~/.tmux.conf
```
