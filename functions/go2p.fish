function go2p --description "Go to a project repository (contains a .git folder)"
    set -l COMMAND "command fd -H -td '.git\$' ~/Code -x echo '{//}' | fzf +m -d '/' --with-nth='-2,-1' --nth='-1' --height='50%'"

    eval "$COMMAND" | read -l TARGET

    if not test -z "$TARGET"
        builtin cd "$TARGET"
        commandline -t ""
    end

    commandline -f repaint
end
