ZSH-P10K
=========

That role simply installs zsh, [oh-my-sh](https://ohmyz.sh/), fzf, [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Requirements
------------

Supported OS:
  - Ubuntu (from focal to current)
  - ArchLinux
  - Fedora (from 33 to current)
  - CentOS (7,8, 8 Stream, 9 Stream)

Software:
  - ansible

Terminals (see Usage):
  - Tilix
  - gnome-terminal

Role Variables
--------------

- font_size: 13
- set_font: true

.zshrc config
- zsh_case_sensitive: false
- zsh_hyphen_intensitive: false # zsh_case_sensitive should be false
- zsh_autoupdate: auto # disabled | reminder
- zsh_autocorrection: true
- zsh_plugin_lines:
  - zgen oh-my-zsh
  - zgen oh-my-zsh plugins/git
  - zgen oh-my-zsh plugins/sudo
  - zgen oh-my-zsh plugins/docker
  - zgen oh-my-zsh plugins/docker-compose
  - zgen oh-my-zsh plugins/command-not-found
  - zgen load romkatv/powerlevel10k powerlevel10k
  - zgen load urbainvaes/fzf-marks
  - zgen load Aloxaf/fzf-tab
  - zgen load zsh-users/zsh-autosuggestions
  - zgen load zsh-users/zsh-syntax-highlighting
  - zgen load joshskidmore/zsh-fzf-history-search


Usage
----------------

Just run:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sandzhaj/zsh_p10k/main/install.sh)"
```

For supported Terminals it also configures font for your default profile. If you terminal app is not it supported list, you should manually change your terminal font to "MesloLGS NF"
After ansible finished, reopen your terminal app and go through powerlevel10k setup wizard.

License
-------

MIT