function __ghq_filter -d 'Repository filtering'
    set -q GHQ_FILTER; or set -l GHQ_FILTER peco
    set -l query (commandline -b)
    switch "$GHQ_FILTER"
        case 'peco'
            __ghq_filter_peco $query
        case 'fzf'
            __ghq_filter_fzf $query
    end
end
