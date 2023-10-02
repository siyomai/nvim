# nvim
This is my nvim setup

## Setup
1. If you haven't already, install the latest stable release of neovim. Refer to [this](https://github.com/neovim/neovim/wiki/Building-Neovim) link for neovim installation
2. (optional) If there is an existing neovim config back up the current `~/.config/nvim` and remove it.
   ```bash
   $ cp ~/.config/nvim ~/nvim-backup
   $ rm -rf ~/.config/nvim
   ```
3. Clone the repo to `~/.config/nvim` and open `~/.config/nvim/plugins/plugins-setup.lua` with neovim
   ```bash
   $ git clone git@github.com:siyomai/nvim.git ~/.config/
   $ cd ~/.config/nvim/lua/siyomai/
   $ nvim plugin-setup.lua
   ```
4. Save file with `:w`. This will trigger the installation for the plugins.
   `Note: if installation fails, just try again. It will succeed the second time`
