## These are my dotfiles for nixos, use them at your own peril :)

> [!NOTE]
> If you are new to nixos I recommend writing your own dotfiles instead of
> copying someone elses, try and learn how nixos works instead of trying
> to figure out how I did it.

### Installation

On any nixos system enter a nix shell with git using

```bash
nix-shell -p git
```

Next make a new directory and cd into it

```bash
mkdir .nix
cd .nix
```

And clone this repo into it

```bash
git clone https://github.com/Gamemaster-git/nix-dots.git ./
```

Next edit the flake.nix file and change

```nix
user = # your username
hosts = # a list of host names
host = # the current host name
```

Next copy your hardware configuration over

```bash
cp /etc/nixos/hardware-configuration.nix ./hosts/hostname/hardware-configuration.nix
```

And finally build your config and restart your system

```bash
sudo nixos-rebuild switch --flake ./
home-manager switch --flake ./
systemctl reboot
```

---

Now you can use `os` in your terminal to rebuild your config or `osu` to update it.
