function __ghq_crtl_g -d 'Repository search'
    [ -z "$GHQ_FILTER" ]; and set GHQ_FILTER fzf
    if [ "$GHQ_FILTER" = fzf ]
        functions -q __fzfcmd; and set GHQ_FILTER __fzfcmd
    end
    set -l query (commandline -b)
    [ -n "$query" ]; and set flags --query="$query"; or set flags
    switch "$GHQ_FILTER"
        case fzf __fzfcmd peco percol
            ghq list --full-path | eval "$GHQ_FILTER" $flags | read select
        case \*
            printf "\nERROR: plugin-ghq is not support '$GHQ_FILTER'.\n"
    end
    [ -n "$select" ]; and cd "$select"
    commandline -f repaint
end
