# Mac Build for Development using Ansible Playbook

[![CI][badge-gh-actions]][link-gh-actions]

This playbook installs and configures most of the software I use on my Mac for software development and security. Some things in macOS are slightly difficult to automate, so I still have a few manual installation steps, but at least it's all documented here.

## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the intaller).
  2. If you are using an M-series Mac you might need to install Rosetta (`sudo softwareupdate --install-rosetta`).
  3. [Install Homebrew][link-brew]
    1. Run the following command to install brew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  4. [Install Ansible][link-ansible]:
    1. Run the following brew command to install ansible `brew install ansible`
  5. Clone or download this repository to your local drive.
  6. Run `ansible-playbook main.yml --ask-become-pass` inside this directory. Enter your macOS account password when prompted for the 'BECOME' password.

**DANGER** This will overwrite your current mac configuraiton!

### Running a specific set

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag.

To list the availble tags use the following command:
```
ansible-playbook main.yml --list-tags
```

You can also run only specified tags with something like:
```
ansible-playbook main.yml --ask-become-pass --tags "tweaks,homebrew"
```

You can skip tags with something like:

```
ansible-playbook home.yml --ask-become-pass --skip-tags="terminal,files"
```

## Overriding Defaults

Not everyones setup is the same. For this reason the default configuration for this project is empty and all the rasks and roles disabled.

You can override any of the defaults configured in ` default.config.yml` by creating a `config.yml` file and setting the overrides in that file.

For examples you can have a look at `home.config.yml` and `work.config.yml`

If you do want have different setups for home and work like I do have a look at my `home.config.yml` and `work.config.yml`. You can use them or create your own and pass it's name as an argument to the `--extra-vars` parameter.

If you do create a `config.yml` file it will always load last and take presidence over any other file.

Using the `home.config.yml`:
```
ansible-playbook main.yml --ask-become-pass --extra-vars "use_config=home"
```

Using the `work.config.yml`:
```
ansible-playbook main.yml --ask-become-pass --extra-vars "use_config=work"
```

## Feedback

If you need to get in touch, you can find how at [my website][link-author] or my [gihub profile][link-gh-home]. Alternatively, you can send in comments and pull requests for the project here.

Issues and Pull requests welcome! ;)

[link-brew]: https://brew.sh
[link-ansible]: https://www.ansible.com/
[link-gh-home]: https://github.com/ckr
[link-author]: https://kouloumbris.com
[badge-gh-actions]: https://github.com/ckr/dotfiles-playbook/workflows/CI/badge.svg?event=push
[link-gh-actions]: https://github.com/ckr/dotfiles-playbook/actions?query=workflow%3ACI