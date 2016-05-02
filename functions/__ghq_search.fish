function __ghq_search -d 'Repository search'
    set -q GHQ_FILTER; or set -l GHQ_FILTER fzf
    set -l query (commandline -b)
    switch "$GHQ_FILTER"
        case peco fzf percol
            test -n "$query"; and set flags --query="$query"; or set flags
            ghq list --full-path | eval "$GHQ_FILTER" $flags | read -l select
            if [ $select ]
                builtin cd "$select"
            end
        case \*
            printf "\nERROR: plugin-ghq is not support '$GHQ_FILTER'.\n"
    end
    commandline -f repaint
end
