# minimal-haskell-emacs

A minimal emacs configuration for haskell programming using [dante](https://github.com/jyp/dante) and friends.

* Coming from Vim? Try the [evil branch](https://github.com/soupi/minimal-haskell-emacs/tree/evil) which includes vim key bindings

[![See it in action](preview.gif)](https://www.youtube.com/watch?v=Ig5k3UkfvZ4)

[Visit dante's README.org to see the features list for Haskell editing](https://github.com/jyp/dante/blob/master/README.org).

Package management approach is based on [this tutorial](https://toumorokoshi.wordpress.com/2014/02/01/emacs-from-scratch-part-2-package-management/).

To get a haskell compiler and toolchain, checkout [ghcup](https://haskell.org/ghcup).

To install this configuration, clone the repository and place the following files at your home directory:

- `.emacs` - emacs will call this file first which will trigger the whole thing. Also contains a few convenient tweaks.
- `.emacs.d/my-packages.el` - contains the list of packages to install when starting emacs
- `.emacs.d/my-loadpackages.el` - defines how to enable and setup the packages we use

**WARNING: Backup your changes to all your emacs related files before running the following commands as they will override your files!**

So the steps are:

```
git clone https://github.com/soupi/minimal-haskell-emacs
cp minimal-haskell-emacs/.emacs  ~/
cp -r minimal-haskell-emacs/.emacs.d ~/
```

Now just run Emacs and start hacking!

---

### Extra useful shortcuts:

Files:

- `F8` - Toggle [neotree](https://github.com/jaypei/emacs-neotree)

Buffers:

- `F7` - Open buffers list
- `C-backtick` / `C-~` - next / previous buffer

Module Overview:

- `F6` - Toggle [imenu-list](https://github.com/bmag/imenu-list)

Windows:

- `C-tab` - switch window
- `M-<arrow>` - move to window in direction

Haskell:

- `C-:` - In a haskell buffer, search this word in hoogle
- `M-,` - Jump back after 'Goto definition' (`M-.`)
