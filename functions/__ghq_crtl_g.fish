function __ghq_crtl_g -d 'Repository search'
    set -l selector
    [ -z "$GHQ_SELECTOR" ]; and set selector fzf; or set selector $GHQ_SELECTOR
    if [ "$selector" = fzf ]
        functions -q __fzfcmd; and set selector (__fzfcmd)
    end
    set -l query (commandline -b)
    [ -n "$query" ]; and set flags --query="$query"; or set flags
    switch "$selector"
        case fzf __fzfcmd peco percol
            ghq list --full-path | eval "$selector" $flags | read select
        case \*
            printf "\nERROR: plugin-ghq is not support '$selector'.\n"
    end
    [ -n "$select" ]; and cd "$select"
    commandline -f repaint
end
