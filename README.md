DOTFILES
========

[![Code Climate](https://codeclimate.com/github/ckr/dotfiles/badges/gpa.svg)](https://codeclimate.com/github/ckr/dotfiles)&nbsp;[![Issue Count](https://codeclimate.com/github/ckr/dotfiles/badges/issue_count.svg)](https://codeclimate.com/github/ckr/dotfiles)&nbsp;[![Codacy Badge](https://api.codacy.com/project/badge/grade/98a75a7aa8fe4e4eba723b11de029f32)](https://www.codacy.com/app/c/dotfiles)

This repository contains most of my "movable" setup.  Mostly these are configurations
for zsh shell, git version control, and Vim text editor.

Installation
------------

Clone the repository:

```
$ git clone https://github.com/ckr/dotfiles.git
$ cd dotfiles
```

**DANGER** This will overwrite your current dot files!

Run Ansible

```
$ ansible-playbook home.yml
```

You can skip package installations and/or network operations (Vim plugins cloning, etc)
with something like:

```
$ ansible-playbook home.yml --skip-tags="network,packages"
```

If you want to install/configure only certain parts, replace `home.yml` in the commands
above with of the other playbooks.

Features
--------

Here is a brief overview of some of the features hidden deep in these dotfiles.

### Git version control

1.  Color support in console git client.
2.  Several handy git aliases to make frequent operations faster ("st" instead of "status", "co" instead of "checkout",
    etc).
3.  Several handy git aliases to make long lists of parameters much shorter ("la", "whatchanged", etc).

### Vim text editor

1.  Modular configuration of plugins with Pathogen plugin and git submodules.
2.  Collection of plugins for web developers (PHP Indent, NERDTree, Syntastic, Tagbar, Gist, etc).
3.  Support for 256 colors in console.


Feedback
--------

If you need to get in touch, you can find instruction at https://kouloumbris.com.  Alternatively, you can send in comments and pull requests for the project on GitHub at https://github.com/ckr/dotfiles .

Patches welcome! ;)
