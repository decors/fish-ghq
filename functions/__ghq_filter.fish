function __ghq_filter -d 'Repository filtering'
    set -q GHQ_FILTER; or set -l GHQ_FILTER peco
    switch "$GHQ_FILTER"
        case 'peco'
            __ghq_filter_peco
        case 'fzf'
            __ghq_filter_fzf
    end
end
