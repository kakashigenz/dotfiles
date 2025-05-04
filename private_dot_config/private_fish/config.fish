starship init fish | source
fish_add_path /usr/local/go/bin

alias python "python3.12"
alias git-graph="git log --oneline --all --graph"

set -x EDITOR "nvim"
set -x OPEN_ROUTER_KEY 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
if status is-interactive
    # Commands to run in interactive sessions can go here
end
