function __ghq_repository_search -d 'Repository search'
    set -l selector
    [ -n "$GHQ_SELECTOR" ]; and set selector $GHQ_SELECTOR; or set selector fzf
    set -l selector_options
    [ -n "$GHQ_SELECTOR_OPTS" ]; and set selector_options $GHQ_SELECTOR_OPTS

    if not type -qf $selector
        printf "\nERROR: '$selector' not found.\n"
        exit 1
    end

    set -l query (commandline -b)
    [ -n "$query" ]; and set flags --query="$query"; or set flags
    switch "$selector"
        case fzf fzf-tmux peco percol fzy sk
            ghq list --full-path | eval "$selector" $selector_options $flags | read select
        case \*
            printf "\nERROR: plugin-ghq is not support '$selector'.\n"
    end
    [ -n "$select" ]; and cd "$select"
    commandline -f repaint
end
