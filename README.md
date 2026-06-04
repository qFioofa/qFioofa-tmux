# qFioofa-tmux

Personal tmux config.

# Install

Install tmux

```bash
sudo apt install tmux
```

Plugin manager
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Clone repo

```bash
git clone https://github.com/qFioofa/qFioofa-tmux
```

Deploy config

```bash
cd ./qFioofa-tmux
bash ./scripts/deploy.sh -r
```

# Nix

Ships a `flake.nix` exposing a Home Manager module (`homeManagerModules.default`).
It symlinks `./src` to `~/.config/tmux` via `xdg.configFile`, so the config can
be managed declaratively instead of running `scripts/deploy.sh`.

```nix
# flake inputs
qFioofa-tmux.url = "github:qFioofa/qFioofa-tmux";

# home configuration
imports = [ qFioofa-tmux.homeManagerModules.default ];
```
