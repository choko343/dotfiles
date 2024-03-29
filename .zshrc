autoload -Uz compinit
compinit
 
zstyle ':completion:*' menu select

# 入力ミスを修正
setopt correct
# 履歴の設定
export HISTSIZE=1000
export SAVEHIST=100000
# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# alias 
if [ "$(uname)" = 'Darwin' ]; then
    #export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ll='ls -alFG'
    alias la='ls -A'
    alias l='ls -CF'
    alias ls='ls -FG'
else
    alias ls='ls -F  --color=auto'
    alias ll='ls -alFG'
    alias la='ls -A'
    alias l='ls -CF'
fi

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias tarzip='tar czvf'
alias tarunzip='tar xzvf'

# for global
export PATH=$PATH:$HOME/usr/bin	
# for git

# VCSの情報を取得するzsh関数
autoload -Uz vcs_info
autoload -Uz colors # black red green yellow blue magenta cyan white
colors

# PROMPT変数内で変数参照
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!" #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f" #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]' #rebase 途中,merge コンフリクト等 formats 外の表示

# %b ブランチ情報
# %a アクション名(mergeなど)
# %c changes
# %u uncommit

# プロンプト表示直前に vcs_info 呼び出し
precmd () { vcs_info }

# プロンプト（左）
PROMPT='%{$fg[cyan]%}[%n@%m]%{$reset_color%}'
PROMPT=$PROMPT'$vcs_info_msg_0_%~'
PROMPT=$PROMPT'
%{${fg[cyan]}%}%}$%{${reset_color}%} '

# プロンプト（右）
#RPROMPT='%{${fg[red]}%}[$vcs_info_msg_0_]%{${reset_color}%'
RPROMPT=''
