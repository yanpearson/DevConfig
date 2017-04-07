# DevConfig
Backup of my configuration files used to configure my  development environment

## Install Vundle

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Clipboard support with tmux on mac os x

[see this topic](https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)

```sh
brew install reattach-to-user-namespace
```

## Error when commiting from the command line on OS X

[see this topic](https://github.com/VundleVim/Vundle.vim/issues/167)

```sh
git config --global core.editor $(which vim)
```
