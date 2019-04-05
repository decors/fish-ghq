# fish-ghq

completions and keybinding for [ghq]

## Install

* Install [ghq]
* Install [fzf], [fzy], [peco] or [percol]
* Install [Fisher](https://github.com/jorgebucaran/fisher)
* Install this plugin

```fish
fisher add decors/fish-ghq
```

## Keybinding

* Ctrl-g: repository finder using [fzf], [fzy], [peco] or [percol].

## Variables

### `GHQ_SELECTOR`

Default selector is `fzf`. If you want to change selector, run

```fish
set -U GHQ_SELECTOR peco (or fzf, fzy, percol)
```

## Selector Customizations

| Selector | File | Variable |
| ---- | ---- | ---- |
| fzf | | [FZF_DEFAULT_OPTS](https://github.com/junegunn/fzf#environment-variables) |
| peco | [~/.config/peco/config.json](https://github.com/peco/peco#configuration-file) | |
| percol | [~/.percol.d/rc.py](https://github.com/mooz/percol#configuration) | |

fzf example :

```fish
set -x FZF_DEFAULT_OPTS '
      --no-sort --reverse --ansi --color bg+:13,hl:3,pointer:7
    '
```

## Completions

### Subcommands

![Completions1](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot1.png)

### Help

![Completions2](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot2.png)

### Repositories

![Completion3](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot3.png)

## License

fish-ghq is MIT licensed. See [LICENSE](LICENSE) file for details.

[ghq]:https://github.com/motemen/ghq
[peco]:https://github.com/peco/peco
[fzf]:https://github.com/junegunn/fzf
[fzy]:https://github.com/jhawthorn/fzy
[percol]:https://github.com/mooz/percol
