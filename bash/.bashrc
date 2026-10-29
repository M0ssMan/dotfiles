# Don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth

# Append to the history file immediately rather than overwriting it
shopt -s histappend

# After every command, append to history. We do not reload.
# We want a session to maintain only its recent commands
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Use git completion if available
if [ -f ~/.git-completion.bash ]; then
        source ~/.git-completion.bash
fi
