function __ghq_filter_fzf -d 'Repository filtering with fzf'
    set -q argv; and set flags --query="$argv"; or set flags
    ghq list --full-path | fzf $flags | read -l select
    if [ $select ]
        builtin cd "$select"
    end
    commandline -f repaint
end
