# dotfiles

This repository contains the configuration files I use to setup my computer.
Feel free to use it too, but this is **under construction** and there is no documentation yet.

Also keep in mind that the Ansible configuration might **break your environment**.
It is an attempt to have a stable (and friendlier than bash) way to configure new Linux environments, but it is not even close to being "ready".
So be sure to know what you're doing!

By the way, I will personally mainly support Fedora (currently on 33).
However, Pop OS might be added eventually.

## Getting started

Replace `/path/to/dotfiles` in the snippet below with the path to where you cloned this repository.

```sh
pip install ansible  # run it with system python, with virtual environments disabled
ansible-galaxy collection install community.general
ansible-playbook -K /path/to/dotfiles/ansible/configure-desktop.yml
```