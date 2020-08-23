# dotfiles
- dotfiles for macOS

---

## Installation
```console
./install.sh
```

## Post Install Setup

#### iTerm2
- If `zsh` is installed by Homebrew, set Custom Shell to `/usr/local/zsh` on startup in iTerm2 settings

#### zsh
- Open iTerm2 and type `p10k configure` to
	- download `MesloLGS NF`
	- configure prompt style

## Optional Post Install Steps

#### iTerm2
- [Option + Left/Right Arrow Keys to move cursor by word](http://tgmerritt.github.io/jekyll/update/2015/06/23/option-arrow-in-iterm2.html)
	- Keyboard Shortcut: `Option+Left Arrow`, `Option+Right Arrow`
	- Action: `Send Escape Sequence`
	- ESC+: `b` for backward, `f` for forward

#### VSCode
- [VSCode - Launching from the command line](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) to add `code` command to terminals

## Exception Handling

#### Cannot choose prompt style in `p10k configure`
- Make sure Terminal
	- Use Powerline glyphs
	- Use `xterm-256color` 

#### Powerline Font not installed after `p10k configure`
- Manually install [MesloLGS NF](https://github.com/romkatv/powerlevel10k#manual-font-installation) and set Terminal font

---

## References
- [Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
- [Nerd Fonts - Homebrew Fonts](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts)
- [Characters per line (CPL)](https://en.wikipedia.org/wiki/Characters_per_line)
- [Zinit](https://github.com/zdharma/zinit)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

#### dotfiles
- [dt665m/dotfiles](https://github.com/dt665m/dotfiles)

#### zsh
- [awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins)
- [Zinit wiki](http://zdharma.org/zinit/wiki/)
- [zdharma/zinit-configs/zshrc.zsh](https://github.com/zdharma/zinit-configs/blob/master/psprint/zshrc.zsh)
- [dgo-/dotfiles/zsh/zshrc](https://github.com/dgo-/dotfiles/blob/master/zsh/zshrc)

#### vim
- [lwhsu/rc/.vimrc](https://github.com/lwhsu/rc/blob/master/.vimrc)
- [amix/vimrc](https://github.com/amix/vimrc)
- [pellaeon/Dotfiles/vimrc](https://github.com/pellaeon/Dotfiles/blob/master/vimrc)