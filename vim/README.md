# README

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
