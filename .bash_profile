source ~/.bashrc
alias ls='ls -pG'
alias lr='ls -hartl '
alias g='grep -i '
alias get='curl -OL '
alias bs='browser-sync start --server -f -w'
alias jb='bundle _2.2.17_ exec jekyll serve --host 0.0.0.0 --livereload'
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="~/bin:$PATH"
PS1='[\W]\$ '
# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"' # Tab completion for branch names
source ~/.git-completion.bash
eval "$(rbenv init -)"
export BASH_SILENCE_DEPRECATION_WARNING=1
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}
