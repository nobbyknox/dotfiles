# README

## Files

* **.vimrc** - probably a very old config of mine
* **.vimrc.basic** - also probably very old
* **neovim-from-nick.vim** - From Nick Janetakis and an alternative for *neovim-vim-bootstrap.vim*. Copy to `~/.config/nvim/init.vim`.
* **neovim-vim-bootstrap.vim** - My current favourite from http://vim-bootstrap.com/ and I'm still running it on 2019-04-13. Copy to `~/.config/nvim/init.vim`.

## Customazation

For `neovim`, create the file `~/.config/nvim/local_init.vim` for general customizations and `~/.config/nvim/local_bundles.vim` for custom external plugins through `vim-plug`.

The idea is to leave the bootstrap file unmodified so that it might be upgraded independently and without losing your custom settings.

---

## Old

Install *vundle*:

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Install the plugins:

```
vim +PluginInstall +qall
```

After some time you might want to upgrade the installed plugins. Use this command:

```
vim +PluginUpdate +qall
```

You might want to install macvim's vim to override the system vim. Do:

```
brew install macvim --with-override-system-vim
```

See http://superuser.com/questions/334252/the-best-way-to-make-macvims-vim-console-not-mvim-the-default-instead-of-mac for more details.
