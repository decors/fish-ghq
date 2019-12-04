# fish-ghq

completions and keybinding for [ghq]

## Todo

* Fix Keybinding conflict with [jethrokuan/fzf](https://github.com/jethrokuan/fzf)

## Install

* Install [ghq]
* Install [fzf], [fzy], [peco], [percol] or [skim]
* Install [Fisher](https://github.com/jorgebucaran/fisher)
* Install this plugin

```fish
fisher add decors/fish-ghq
```

## Keybinding

* Ctrl-g: repository finder using [fzf], [fzy], [peco], [percol] or [skim].

## Variables

### `GHQ_SELECTOR`

Default selector is `fzf`. If you want to change selector, run

```fish
set -g GHQ_SELECTOR peco (or fzf, fzf-tmux, fzy, percol, sk)
```

### `GHQ_SELECTOR_OPTS`

fzf example :

```fish
set -g GHQ_SELECTOR_OPTS "--no-sort --reverse --ansi --color bg+:13,hl:3,pointer:7"
```

peco example :

```fish
set -g GHQ_SELECTOR_OPTS "--layout=top-down --prompt='ghq>'"
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
[skim]:https://github.com/lotabout/skim
