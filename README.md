# NeoVim Configuration

## Installation & Dependencies

> I've not made any attempts to guard against Vim vs Neovim, so this assumes you already have
[Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
installed.  A lot of the tools/plugins and some functions are specific to Neovim.

1. Clone the repo to your `$HOME/.config/nvim`

```
$ git clone https://github.com/fullybaked/nvim-dotfiles ~/.config/nvim
```

2. Install dependencies

*a) Python 3*
The main dependency here is Python 3, which Neovim (and the Deo~ plugins) require.  I use
[PyEnv](https://github.com/pyenv/pyenv), but basically you'll want the latest Python 3 version.

*b) Python Neovim bindings*

```
pip install pynvim
```

*c) Python packages used by this setup for code completion, linting, formatting and more*

```
pip install black jedi isort
```

*d) [FZF](https://github.com/junegunn/fzf) (Global fuzzy finder which you can apply to your shell and other programs too)*

_(Assumes macOS and Homebrew - if either of these are not true, you'll have to read the docs on the
repo)_

```
brew install fzf
```

*e) [Silver Searcher](https://github.com/ggreer/the_silver_searcher) (A grep replacement)*

```
brew install the_silver_searcher
```

*f) Ruby (Optional)*

I used to use a lot of Ruby so have included this, but at the moment the "Ruby layer" is defaulted
to off.

- Use [rbenv](https://github.com/rbenv/rbenv) - much like pyenv, this lets you install the latest Ruby.
- Install the Ruby bindings for Neovim 

```
gem install neovim
```

*g) [Ctags](https://github.com/universal-ctags/ctags)*

While most of the tagging/jump to definition comes via Jedi (at least for Python) - Ctags allows FZF
to find methods/classes in most code files regardless of language - a plugin called Gutentags helps
manage the tag file (which you'll need to ignore in your .gitignore - I put it in my ~/.gitignore so
it's global).

```
brew install ctags
```

Although recently I've been experimenting with a Rust based wrapper called
[ptags](https://github.com/dalance/ptags) that parallelises the ctag look
ups. You can install the binary by downloading it from the Github repo [releases
page](https://github.com/dalance/ptags/releases/), or if you have
Rust setup you can install via `cargo`. I've found that on big codebases, this helps speed things
up.

```
cargo install ptags
```

*h) Dein - plugin manager for Neovim*

This config uses the [Dein plugin manager](https://github.com/Shougo/dein.vim) for Neovim, which you'll need to install separately.

```
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

$ sh ./installer.sh ~/.cache/dein
```


## First Run / Setup

If you open Neovim immediately after following the installation section, you'll probably run into a
lot of errors.  So, the first time you run Neovim you need to trigger Dein to setup all the plugins

```
nvim -c 'call dein#install() | q'
```

This opens `nvim` and immediately runs the `dein#install()` command, quitting again when that is
complete.  You should then be free to run `nvim` normally.

## Features

### Code Complete / Jump-to / Documentation

This is mostly provided by Jedi (for Python) and Deocomplete. It uses the Python binary for the
language autocomplete, along with open buffers, the current codebase and installed libraries.

The plung `poet-v` allows Jedi to follow poetry install paths and jump to definitions of third-party
code (assuming you use Poetry).

- `<Leader>d` - jump to definition for the function/method under the pointer

- `<Shift>k` - open a split with the docstring for the function/method under the pointer

### Fuzzy Search

This is provided by FZF and FZF.vim.  It also ties in to `Ag` ([The Silver
Searcher](https://github.com/ggreer/the_silver_searcher)), which has to be installed if you want to
use this function. (See Installation notes).

#### Search

- `<Ctrl>s` - Search for the word under the pointer in the current project and provide fuzzy search
    list reduction on results

- `<Leader>s` - Search file content in current path (and sub-paths)

#### Files


- `<Leader>b` - Search across all open buffers

- `<Leader>f` - Search filenames in the current path (and sub-paths)

#### Tags

- `<Ctrl>t` - Search across tags in the current project (provided by ctags/ptags)

### Tmux Integration

### Git Integration

### Quality of Life

### Python Integration

### VimWiki

## Configuration

