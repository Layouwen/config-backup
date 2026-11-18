# Config Backup

Personal backup for editor and terminal configurations across platforms.

## Layout

| Path | Description |
| --- | --- |
| `vscode-cursor-trae/settings.json` | Shared settings for VS Code, Cursor, and Trae |
| `vscode-cursor-trae/vscode/keybindings.json` | VS Code keybindings |
| `mac/.zshrc` | zsh config for macOS |
| `windows/wsl/.zshrc` | zsh config for WSL |
| `windows/terminal/settings.json` | Windows Terminal settings |
| `zed/settings.json` | Zed settings |
| `zed/keymap.json` | Zed keymap |

## Usage

Back up the destination file before replacing it. Review paths, installed tools, and personal preferences for the target machine.

### VS Code / Cursor / Trae

Use `vscode-cursor-trae/settings.json` as the shared source. Open the target editor's user settings JSON and copy the settings you need into it. Some settings refer to extensions, fonts, or features that may not be available in every editor; review them before applying.

Common macOS destinations:

- **VS Code**: `~/Library/Application Support/Code/User/settings.json`
- **Cursor**: `~/Library/Application Support/Cursor/User/settings.json`
- **Trae**: use the editor's user settings JSON to locate the destination for your edition.

On Windows, VS Code user settings are stored in `%APPDATA%\Code\User\settings.json`.

Copy `vscode-cursor-trae/vscode/keybindings.json` to VS Code's user config directory as `keybindings.json`. These keybindings are maintained for VS Code; review command names before reusing them in another editor.

### Zed

Copy the files to:

- `zed/settings.json` → `~/.config/zed/settings.json`
- `zed/keymap.json` → `~/.config/zed/keymap.json`

### zsh on macOS

Copy `mac/.zshrc` to `~/.zshrc` after preparing its dependencies:

- **Oh My Zsh** at `~/.oh-my-zsh`, with the **Spaceship** theme available to it.
- **zplug** at `$HOMEBREW_PREFIX_CUSTOM/opt/zplug`. The backup sets `HOMEBREW_PREFIX_CUSTOM=/opt/homebrew`; adjust this to the target machine's Homebrew prefix.
- The zplug plugins **zsh-syntax-highlighting**, **zsh-autosuggestions**, and **zsh-vi-mode**. The config prompts to install missing plugins.
- Startup output uses **fastfetch**, **lolcat**, **figlet**, and **cowsay**, plus `quote` from the Oh My Zsh `rand-quote` plugin. Install these commands or disable the corresponding startup lines.

The macOS config uses **fnm** for Node version management. fnm initializes only when its command is available on `PATH`. Bun and pnpm have separate PATH entries.

Python configuration includes optional **pyenv** initialization. **Miniforge** and **Miniconda** initialization examples are both commented out; enable only the one matching your installation and check its path.

Optional integrations such as Angular completion, thefuck, Kiro CLI, and Worktrunk (`wt`) load when their command or script is present. Aliases such as `rm` → `trash`, `zj` → `zellij`, and `lg` → `lazygit` require the corresponding tools. Also review custom PATH entries and the local proxy port (`10086`).

The backup does not include `.zprofile`, `.zshenv`, credentials, or NAS mount helpers. Open a new terminal after restoring the config to check startup and command availability.

### zsh on WSL

Copy `windows/wsl/.zshrc` to `~/.zshrc` after installing Oh My Zsh, the Spaceship theme, and zplug. This config expects zplug at `~/.zplug`, uses fnm, and runs `neofetch`, `lolcat`, `figlet`, and `cowsay` at startup.

Review the hardcoded fnm path and Windows host proxy address before restoring. The WSL config is maintained separately from the macOS config.

### Windows Terminal

Use `windows/terminal/settings.json` as the source for Windows Terminal's settings JSON. Review local profile paths before replacing existing settings.

## Notes

- The repo follows the [`dotfiles`](https://dotfiles.github.io/) convention but keeps plain copies instead of symlinks for simplicity.
- Copying these files does not install applications, themes, plugins, fonts, or extensions.
- Keep credentials and machine-private configuration outside the repository.
