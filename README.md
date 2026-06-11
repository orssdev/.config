# .config

Personal dotfiles for macOS, cloned directly into `~/.config/`.

## Install

```sh
git clone <repo> ~/.config
```

## .zshrc Snippets

Add the following to `~/.zshrc`:

### Starship

```zsh
eval "$(starship init zsh)"
```

### Tmux

```zsh
alias stmux="tmux source-file ~/.config/tmux/tmux.conf"
```

### eza

```zsh
export EZA_CONFIG_DIR="$HOME/.config/eza"
```

## Hammerspoon

```sh
brew install --cask hammerspoon
defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
```

Grant Accessibility permission: System Settings → Privacy & Security → Accessibility → enable Hammerspoon. Required for hotkeys that send keystrokes (e.g. `cmd+shift+v` → Spotlight clipboard history).