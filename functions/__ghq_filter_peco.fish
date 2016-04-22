function __ghq_filter_peco -d 'Repository filtering with peco'
    set -q argv; and set flags --query "$argv"; or set flags
    ghq list --full-path | peco $flags | read -l select
    if [ $select ]
        builtin cd "$select"
    end
    commandline -f repaint
end
