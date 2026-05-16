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