# Config Backup

Personal backup for editor and terminal configurations across platforms.

## Layout

| Path                      | Description                       |
| ------------------------- | --------------------------------- |
| `cursor/settings.json`    | Cursor editor settings            |
| `mac/.zshrc`              | zsh config for macOS              |
| `vscode/settings.json`    | VS Code editor settings           |
| `vscode/keybindings.json` | VS Code keybindings               |
| `windows/terminal/settings.json` | Windows Terminal settings   |
| `windows/wsl/.zshrc`      | zsh config for WSL                |
| `zed/settings.json`       | Zed editor settings               |
| `zed/keymap.json`         | Zed keymap                        |

## Usage

### Cursor / VS Code / Zed

Copy the corresponding file to the editor's config directory:

- **Cursor**: `~/Library/Application Support/Cursor/User/settings.json`
- **VS Code**: `~/Library/Application Support/Code/User/settings.json` (macOS) or `%APPDATA%\Code\User\` (Windows)
- **Zed**: `~/.config/zed/settings.json` and `~/.config/zed/keymap.json`

### zsh

- **macOS**: copy `mac/.zshrc` to `~/.zshrc`
- **WSL**: copy `windows/wsl/.zshrc` to `~/.zshrc`

### Windows Terminal

Import `windows/terminal/settings.json` via Terminal Settings or replace `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

## Notes

- The repo follows the [`dotfiles`](https://dotfiles.github.io/) convention but keeps plain copies instead of symlinks for simplicity.
- Before restoring a file, back up your current configuration.
