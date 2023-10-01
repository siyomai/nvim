# nvim
This is my nvim setup

## Installation
1. (optional) If there is an existing neovim config back up the current `~/.config/nvim` and remove it.
   ```bash
   $ cp ~/.config/nvim ~/nvim-backup
   $ rm -rf ~/.config/nvim
   ```
2. Clone the repo to `~/.config/nvim` and open `~/.config/nvim/plugins/plugins-setup.lua` with neovim
```bash
$ git clone git@github.com:siyomai/nvim.git ~/.config/
$ cd ~/.config/nvim/plugins/
$ nvim plugin-setup.lua
```
3. After installation Quit neovim and it's ready to go.
