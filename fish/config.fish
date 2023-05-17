if status is-interactive
    zoxide init fish | source
    thefuck --alias | source
    
    set -x EDITOR nvim
    set -x GIT_EDITOR $EDITOR
    set -x GPG_TTY (tty)
end


# pnpm
set -gx PNPM_HOME "/Users/joonas/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end