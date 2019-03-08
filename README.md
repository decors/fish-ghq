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

- Ctrl-g: repository finder using [fzf], [fzy], [peco] or [percol].

## Variables

### `GHQ_SELECTOR`

If you want to change selector, run `set -U GHQ_SELECTOR peco (or fzf, fzy, percol)`.
Default filter is fzf if variable is not set.

## Completions

### Subcommands
![補完1](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot1.png)

### Help
![補完2](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot2.png)

### Repositories
![補完3](https://raw.githubusercontent.com/decors/various/master/images/ghq-screenshot3.png)

## License

fish-ghq is MIT licensed. See [LICENSE](LICENSE) file for details.

[ghq]:https://github.com/motemen/ghq
[peco]:https://github.com/peco/peco
[fzf]:https://github.com/junegunn/fzf
[fzy]:https://github.com/jhawthorn/fzy
[percol]:https://github.com/mooz/percol
