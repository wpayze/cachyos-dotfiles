# cachyos-packages

Package synchronization between my two CachyOS machines (desktop PC + laptop).

## Contents

| File | Description |
| --- | --- |
| `packages/oficiales.txt` | Packages installed from the official repos (`pacman`) |
| `packages/aur.txt` | Packages installed from the AUR (`yay`) |
| `sync-export.sh` | Exports the current package list and pushes it to the repository |
| `sync-install.sh` | Pulls the latest list from the repository and installs everything |

## Usage

### Export

On the machine where you installed something new:

```bash
./sync-export.sh
```

This updates `packages/oficiales.txt` and `packages/aur.txt`, then commits and pushes automatically.

### Install

On the other machine, to match it:

```bash
./sync-install.sh
```

This runs `git pull` and then installs anything missing with `pacman` and `yay`.

## First time on a new machine

```bash
git clone <this-repo-url> ~/cachyos-packages
cd ~/cachyos-packages
chmod +x sync-export.sh sync-install.sh
./sync-install.sh
```
