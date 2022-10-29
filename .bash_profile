alias lr='ls -hartl '
alias g='grep -i '
alias get='curl -OL '
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
PS1='[\W]\$ '
# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"' # Tab completion for branch names
source ~/.git-completion.bash
