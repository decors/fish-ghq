function __fish_ghq_needs_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq 1 -a $cmd[1] = "ghq" ]
        return 0
    end
    return 1
end

function __fish_ghq_using_command
    set cmd (commandline -opc)
    if [ (count $cmd) -gt 1 ]
        if [ $argv[1] = $cmd[2] ]
            return 0
        end
    end
    return 1
end

# Help
function __fish_ghq_help_topics
    for c in get list look import root
        printf "%s\thelp topic\n" $c
    end
end

function __fish_ghq_vcs
    for c in git subversion git-svn mercurial darcs
        printf "%s\tVCS\n" $c
    end
    printf "github\tAlias for git\n"
    printf "svn\tAlias for subversion\n"
    printf "hg\tAlias for mercurial\n"
end

complete -f -c ghq -n "__fish_ghq_needs_command" -a help -d "Shows a list of commands or help for one command"
complete -f -c ghq -n "__fish_ghq_using_command help" -a "(__fish_ghq_help_topics)"

complete -f -c ghq -n "__fish_ghq_needs_command" -a get -d "Clone/sync with a remote repository"
complete -f -c ghq -n "__fish_ghq_using_command get" -l update -s u -d "Update local repository if cloned already"
complete -f -c ghq -n "__fish_ghq_using_command get" -s p -d "Clone with SSH"
complete -f -c ghq -n "__fish_ghq_using_command get" -l shallow -d "Do a shallow clone"
complete -f -c ghq -n "__fish_ghq_using_command get" -l look -s l -d "Look after get"
complete -f -c ghq -n "__fish_ghq_using_command get" -l vcs -d "Specify VCS backend for cloning" -r -a "(__fish_ghq_vcs)"
complete -f -c ghq -n "__fish_ghq_using_command get" -l silent -s s -d "Clone or update silently"

complete -f -c ghq -n "__fish_ghq_needs_command" -a list -d "List local repositories"
complete -f -c ghq -n "__fish_ghq_using_command list" -l exact -s e -d "Perform an exact match"
complete -f -c ghq -n "__fish_ghq_using_command list" -l vcs -d "Specify VCS backend for matching" -r -a "(__fish_ghq_vcs)"
complete -f -c ghq -n "__fish_ghq_using_command list" -l full-path -s p -d "Print full paths"
complete -f -c ghq -n "__fish_ghq_using_command list" -l unique -d "Print unique subpaths"

complete -f -c ghq -n "__fish_ghq_needs_command" -a look -d "Look into a local repository"
complete -f -c ghq -n "__fish_ghq_using_command look" -a "(ghq list)" -d "local repository"

complete -f -c ghq -n "__fish_ghq_needs_command" -a import -d "Bulk get repositories from stdin"
complete -f -c ghq -n "__fish_ghq_using_command import" -l update -s u -d "Update local repository if cloned already"
complete -f -c ghq -n "__fish_ghq_using_command import" -s p -d "Clone with SSH"
complete -f -c ghq -n "__fish_ghq_using_command import" -l shallow -d "Do a shallow clone"
complete -f -c ghq -n "__fish_ghq_using_command import" -l look -s l -d "Look after get"
complete -f -c ghq -n "__fish_ghq_using_command import" -l vcs -d "Specify VCS backend for cloning" -r -a "(__fish_ghq_vcs)"
complete -f -c ghq -n "__fish_ghq_using_command import" -l silent -s s -d "Clone or update silently"
complete -f -c ghq -n "__fish_ghq_using_command import" -l parallel, -s P -d "[Experimental] Import parallely"

complete -f -c ghq -n "__fish_ghq_needs_command" -a root -d "Show repositories' root"
complete -f -c ghq -n "__fish_ghq_using_command root" -l all -d "Show all roots"

complete -f -c ghq -n "__fish_ghq_needs_command" -l help -s h -d "show help"
complete -f -c ghq -n "__fish_ghq_needs_command" -l version -s v -d "print the version"
