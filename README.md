Casu's ViM config
=================

This is my current ViM configuration

To install, just clone this project:

``` bash
git clone https://github.com/elcasu/vim.git .vim
```

And then create your .vimrc as a symlink to .vim/vimrc:

``` bash
ln -s ~/.vim/vimrc .vimrc
```

I'm using Vundle to manage plugins. Install it:

``` bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

``` vim
:BundleInstall
```

And that's it! :-)
