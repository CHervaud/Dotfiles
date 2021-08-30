# ZSH configuration

#### What is done by scripts ?
All of this section

[Scripts doc](doc/scripts.md)

### Configure zshrc

Fisrt of all, clone this repository if it's not already done, here is an example:
```
git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles
```

Then copy `/tmp/Dotfiles/data/zsh/zshrc`(following previous example) to `~/.zshrc`:
```
cp /tmp/Dotfiles/data/zsh/zshrc ~/.zshrc
```

### Install ohmyzsh plugins

Simply clone the plugins:
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
```
git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k
```

## Next doc

Now it's time to check [neovim doc](doc/neovim.md)
