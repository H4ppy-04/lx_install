<div align="center"><h1>Trivoz's installation script</h1></div><br><hr><br>

This is a script that is specifically designed to suit my needs. With that said,
I understand that setting up a bunch of applications is laborious and exhausting
so I have made a few tweaks to my installation such that it is more accessible to
beginners that are looking for a quick and easy Linux installation script.

I'd also like to mention that if you are looking for an installation script, 
there are other scripts on GitHub that would likely suit your needs much closer than
this repository. Although, if you use this script, thanks, as it helps when people
tell me what will break and what doesn't so I can make it better.

## Dependencies

This script will install programs that are **required** as dependencies
for downloading and configuring other **optional** programs.

 * git  - the stupid content tracker
 * curl - a tool for transferring data to and from servers
 * wget - a network downloader
 * fzf  - a command line fuzzy finder


## Optional Programs

Then, there are optional programs that you can choose to install.
These are the categories:

#### Shell 🐢

 * [zsh](https://www.zsh.org) with [oh-my-zsh](https://ohmyz.sh/) also attached.
 * (or alternatively) [bash](https://www.gnu.org/software/bash) with a few tweaks such as fzf and colored manual pages.

#### Terminal

 * [vim](https://www.vim.org/) with the following tweaks/plugins:
   * the [Pathogen](https://tpo.pe/pathogen.vim) plugin manager
   * [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) for file navigation
   * [gitgutter](https://www.vim.org/) and [fugitive](https://tpope.io/vim/fugitive.git) for version control
   * [vim-surround](https://github.com/tpope/vim-surround) because its awesome
   * [vim-sensible](https://tpope.io/vim/sensible.git) because everybody likes a few sensible defaults
   * [vim-vinegar](https://github.com/tpope/vim-vinegar) for interactive file navigation *and* file refactoring
   * [vim-repeat](https://tpope.io/vim/repeat.git) so that the `.` will also work with plugins
 * (or alternatively) [astronvim](https://astronvim.com/)

#### Rust 🦀

 * [Rust](https://www.rust-lang.org/) - *no alternative*

## Nerd Fonts

You can't choose *not* to install nerd fonts, unless you actively modify the script.
With that said, the following fonts are installed:

 * NerdFontsSymbolsOnly
 * Fira Code
 * Fira Mono
 * Agave
 * Droid Sans Mono
 * Fantasque Sans Mono


## Requirements

 * You must have internet connection for this to work!
 * DO NOT RUN THIS THING IS ROOT. Don't worry, though, since it won't let you run as root. Think of it as a stupidity barrier.

## Thanks

A lot of the good stuff in this script came from this file lucario378 whom has been monolithically
helpful throughout the development process. I also (like everyone on this planet) used stack overflow
when I got stuck. Shout out to the following people.

  * C0deDaedalus
  * dessert
  * David C. Rankin (et. Al)
  * mateusza
