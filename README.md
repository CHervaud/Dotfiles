# Dotfiles

This is my litle repository for my dotfiles, feel free to use my configuration !

## Use

To use this repository, their is some documentation on dotfiles [here](doc/dotfiles/softwares_installations.md)

So just read it, and you will know all you need to know to setup your device

## Scripts

I have made some scripts for autoinstallation, it automatically install and config things for me, some doc [here](doc/dotfiles/scripts.md)

Their is one global script that do all [here](script/run_all.sh)

One that do all the installations [here](script/install/install_all.sh)

And one that do all the configurations [here](script/config/config_all.sh)

All installations scripts [here](script/install/) and all configurations scripts [here](script/config/)

If you just want to install neovim configuration, execute the following command
```sh
sh -c 'rm -f /tmp/nvimInstaller.sh && curl -fLo -H "Cache-Control: no-cache, no-store" /tmp/nvimInstaller.sh --create-dirs "https://raw.githubusercontent.com/Curs3W4ll/Dotfiles/master/installNvim.sh" && chmod +x /tmp/nvimInstaller.sh && /tmp/./nvimInstaller.sh'
```

If you just want to install zsh configuration, execute the following command
```sh
sh -c 'rm -f /tmp/zshInstaller.sh && curl -fLo -H "Cache-Control: no-cache, no-store" /tmp/zshInstaller.sh --create-dirs "https://raw.githubusercontent.com/Curs3W4ll/Dotfiles/master/installZsh.sh" && chmod +x /tmp/zshInstaller.sh && /tmp/./zshInstaller.sh'
```

If you just want to install terminator configuration, execute the following command
```sh
sh -c 'rm -f /tmp/terminatorInstaller.sh && curl -fLo -H "Cache-Control: no-cache, no-store" /tmp/terminatorInstaller.sh --create-dirs "https://raw.githubusercontent.com/Curs3W4ll/Dotfiles/master/installTerminator.sh" && chmod +x /tmp/terminatorInstaller.sh && /tmp/./terminatorInstaller.sh'
```

## Other docs

I have also made some documentations for [vim](doc/vim/vim.md) and for [gitlab](doc/gitlab.md)
