# DalaDesktop

Ansible playbook to set up a Hyprland environment on Fedora (home and work laptop).

## Quick start

On a fresh Fedora install, run:

```bash
bash <(curl -s https://raw.githubusercontent.com/Dalikon/DalaDesktop/master/run.sh)
```

This installs git and ansible, clones the repo, and runs the playbook.

## What gets installed

- **Hyprland** stack: hyprland, hyprlock, hypridle, swww, waybar, swaync, rofi, kitty, wallust
- **Utilities**: thunar, blueman, nm-applet, cliphist, grim, slurp, swappy, nwg-displays, solaar
- **Dev**: neovim (lazy.nvim auto-installs on first run), tmux, git, python3
- **Apps**: brave-browser, obsidian, obs-studio, krita, gimp, virt-manager
- **Built from source**: sunsetr (colour temperature)

## Manual steps after first login into Hyprland

### hy3 tiling plugin
hy3 requires a running Hyprland session — hyprpm cannot run from the playbook:

```bash
hyprpm add https://github.com/outfoxxed/hy3
hyprpm enable hy3
hyprctl reload
```

### SSH key
The SSH config is symlinked but keys are not stored in this repo.
Copy your private keys to `~/.ssh/` and set correct permissions:

```bash
chmod 600 ~/.ssh/id_*
```

## Optional roles

### Nvidia drivers
Uncomment `NvidiaDriversFedora` in `setup.yml` before running:

```yaml
roles:
  ...
  - role: NvidiaDriversFedora
```

## Dotfile structure

`~/.config` is a symlink to `~/DalaDesktop/configs/` — editing configs in place edits the repo directly.

| Symlink | Source |
|---|---|
| `~/.config` | `DalaDesktop/configs/` |
| `~/.bashrc` | `DalaDesktop/CpToHome/.bashrc` |
| `~/.bash_profile` | `DalaDesktop/CpToHome/.bash_profile` |
| `~/.gitconfig` | `DalaDesktop/CpToHome/.gitconfig` |
| `~/.ssh/config` | `DalaDesktop/CpToHome/.ssh/config` |
| `~/.dircolors` | `DalaDesktop/CpToHome/.dircolors` |
