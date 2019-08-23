# minimal-haskell-emacs + evil-mode

A minimal emacs configuration for haskell programming using [dante](https://github.com/jyp/dante) and friends.

If you are coming from Vim, evil-mode is here to make you feel at home.

[Visit dante's README.org to see the features list for Haskell editing](https://github.com/jyp/dante/blob/master/README.org).

Package management approach is based on [this tutorial](http://y.tsutsumi.io/emacs-from-scratch-part-2-package-management.html).

To get a haskell compiler, I recommend downloading [Stack](https://haskell-lang.org/get-started) and running `stack setup` to install GHC.

To install this configuration, clone the repository and place the following files at your home directory:

- `.emacs` - emacs will call this file first which will trigger the whole thing. Also contains a few convenient tweaks.
- `.emacs.d/my-packages.el` - contains the list of packages to install when starting emacs
- `.emacs.d/my-loadpackages.el` - defines how to enable and setup the packages we use

**WARNING: Backup your changes to all your emacs related files before running the following commands as they will override your files!**

So the steps are:

```
git clone -b evil https://github.com/soupi/minimal-haskell-emacs
cp minimal-haskell-emacs/.emacs  ~/
cp -r minimal-haskell-emacs/.emacs.d ~/
```

Now just run Emacs and start hacking!

