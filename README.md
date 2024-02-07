<div align="center"><h1>Trivoz's Installation Script</h1></div>

**This is a script that is specifically designed to suit my needs**. *With that said...*

For beginners and experts alike, setting up a bunch of applications is laborious and exhausting
so I have made a few tweaks to my installation such that it is more accessible to
people that are looking for a quick and easy Linux installation script.

I'd also like to mention that if you are looking for an installation script, there are other scripts on GitHub that would likely suit your needs much closer than this repository.
For example, I've found that [Larbs](https://larbs.xyz/) aligns well with my preferences.
If you use this script: **Thank you**. When people file issues and PR's telling me what will break this thing, I can focus on improving it.



## Dependencies

These are **required** for downloading **optional** programs *(see __Optional Programs__ in the following section)*.

 * [git](https://git-scm.com)  - the stupid content tracker
 * [curl](https://curl.se) - a tool for transferring data to and from servers
 * [wget](https://www.gnu.org/software/wget/) - a network downloader
 * [fzf](https://github.com/junegunn/fzf)  - a command line fuzzy finder


## Installation

 1. [Clone](https://github.com/git-guides/git-clone) this repository into `$HOME/dotfiles` (backup your existing files)
 2. Give the `INSTALL` file executable permissions with `chmod +x INSTALL`
 3. Run the `INSTALL` file via `./INSTALL`


## Optional Programs

These are **optional** programs that you can *choose* to install.

#### Shell 🐢

 * [zsh](https://www.zsh.org) with [oh-my-zsh](https://ohmyz.sh/) also attached.
 * (or alternatively) [bash](https://www.gnu.org/software/bash) with a few tweaks such as fzf and colored manual pages.

#### Terminal

 * [vim](https://www.vim.org/) with the following tweaks/plugins:
   * The [Pathogen](https://tpo.pe/pathogen.vim) plugin manager.
   * [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) for file navigation.
   * [gitgutter](https://www.vim.org/) and [fugitive](https://tpope.io/vim/fugitive.git) for version control.
   * [vim-surround](https://github.com/tpope/vim-surround) because its awesome.
   * [vim-sensible](https://tpope.io/vim/sensible.git) because everybody likes a few sensible defaults.
   * [vim-vinegar](https://github.com/tpope/vim-vinegar) for interactive file navigation *and* file refactoring.
   * [vim-repeat](https://tpope.io/vim/repeat.git) so that the `.` will also work with plugins.
 * (or alternatively) [astronvim](https://astronvim.com/).

#### Rust 🦀

 * [Rust](https://www.rust-lang.org/) - *no alternative*




## Fonts

**Nerd fonts** are cool because they combine multiple characters into a single glyph which makes programming and looking at code much easier.
I think [NerdFonts.com](https://www.nerdfonts.com/) describes it very well.

> Nerd Fonts patches developer targeted fonts with a high number of glyphs (icons). 
>
> \- **NerdFonts.com**

Here are the fonts that I've chosen to be installed:

 * NerdFontsSymbolsOnly
 * Fira Code
 * Fira Mono
 * Agave
 * Droid Sans Mono
 * Fantasque Sans Mono




## Requirements

 * You must have internet connection for this to work!
 * You must be running either Debian, Ubuntu or a GNU/Linux distribution that uses `apt` as its native package manager.
 * You must have a decent amount of storage. I haven't measured the storage precisely, but generally when installing Linux you should have 15-20 GB (at least!).
 


## Thanks 

A lot of the good stuff in this script came from this file lucario378 whom has been monolithically helpful throughout the development process.
I also used stack overflow when I got stuck. Shout out to these awesome humans:

  * C0deDaedalus
  * dessert
  * David C. Rankin (et. Al)
  * mateusza
