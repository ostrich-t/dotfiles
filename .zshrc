# Created by newuser for 5.8
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
alias ll="ls -l"
autoload -Uz vcs_info 
autoload -Uz colors
precmd () { vcs_info } 
# PROMPT変数内で変数参照 
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true 
#formats 設定項目で %c,%u が使用可 
zstyle ':vcs_info:git:*' stagedstr "%F{green}!" 
#commit されていないファイルがある 
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" 
#add されていないファイルがある 
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f" 
#通常 
zstyle ':vcs_info:*' actionformats '[%b|%a]' 
#rebase 途中,merge コンフリクト等 formats 外の表示 

# プロンプト（左） 
PROMPT='%{$fg[red]%}%n@%C %#%{$reset_color%}' 
PROMPT=$PROMPT'${vcs_info_msg_0_} %{${fg[red]}%}%}$%{${reset_color}%} '
# プロンプト（右） 
RPROMPT='%{${fg[red]}%}[%~]%{${reset_color}%}'

export PATH="$PATH:$HOME/development/flutter/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(anyenv init -)"
