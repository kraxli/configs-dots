# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$HOME/bin:/usr/local/bin:/home/dave/.dutils/DCD/bin:$PATH

# export PATH=$PATH:$HOME/bin:/usr/local/bin:$HOME/.dub/packages/dfmt-0.7.0/dfmt/bin:$HOME/.dub/packages/dscanner-0.5.11/dscanner/bin:$HOME/.dutils/DCD/bin:$HOME/.dub/packages/serve-d-0.1.3/serve-d
# nim / nimble
# export PATH=/home/dave/.nimble/bin:$PATH

# snow forecast scrabbler
# export PATH=/home/dave/OneDrive/03_coding/00_Projects/web_scrabbling/Python/webscrabbler:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/dave/.oh-my-zsh

export FRED_API_KEY='dcfdef2f0a227b7e95b2685f39c3b834'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# activate ocaml:
# eval $(opam env)

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  taskwarrior
  vi-mode
  fzf-zsh
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

############################################
# NVIM
############################################
export XDG_CONFIG_HOME=/home/dave/.config/
export XDG_DATA_HOME=~/.local/share

export PATH=/home/dave/.nvim/squashfs-root/usr/bin/:$PATH
# ---- or (nvim.appimage recaches at every start up but a markdown error does not appear) ----
# export PATH=/home/dave/.nvim/:$PATH  # create symbolic link at install
# alias nvim='~/.nvim/nvim.appimage'


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi
############################################

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


##################
#  OWN SETTINGS  #
##################

# ---- FZF ----
# if type ag &> /dev/null; then
#   export FZF_DEFAULT_COMMAND='ag '
#   export FZF_DEFAULT_OPTS='-m --height 50% --border'
# elif type rg &> /dev/null; then
#   export FZF_DEFAULT_COMMAND='rg --files'
#   export FZF_DEFAULT_OPTS='-m --height 50% --border'
# fi

export FZF_COMPLETION_TRIGGER='**' # change ** to whatever you like
export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=80%
--multi
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
--prompt='∼ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-a:select-all'
--bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
--bind 'ctrl-V:execute(echo {+} | xargs -o nvim)'
--bind 'ctrl-e:execute(code {+})'
--ansi
"
# --bind 'ctrl-v:execute(echo {+} | xargs -o vim)'
# --preview-window=:hidden

# alias fzf="fzf --preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200' --layout=reverse --height=80% --prompt='~ ' --pointer='▶' --marker='✗' --bind '?:toggle-preview' --bind 'ctrl-a:select-all' --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)' --bind 'ctrl-e:execute(echo {+} | xargs -o vim)'"

# -- fzf's command --
# export FZF_DEFAULT_COMMAND="fd" # CTRL-T's command
# export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude '.git' --exclude 'node_modules'"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND" # ALT-C's command
# export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

# -- FZF key bindings --
# 1) Toggle preview window visibility with '?'
# 2) Select all entries with 'CTRL-A'
# 3) Copy the selected entries to the clipboard with 'CTRL-Y'
# 4) Open the selected entries in vim with 'CTRL-E'


#Open the selected entries in vscode with 'CTRL-E'
# --bind 'ctrl-e:execute(code {+})'


# ---- BASIC SETTINGS ----
# export DIR_DRIVE='~/OneDrive'
export DIR_GDRIVE='~/Gdrive'
export DIR_DBOX='~/Dropbox'
export DIR_DRIVE=$DIR_GDRIVE
export DIR_PKD=$DIR_GDRIVE'/PKD'


# ---- FUNCTIONS ----
function search {
  ag --path-to-ignore ~/.ignore_ag "$@" && ag -g "$@" --path-to-ignore ~/.ignore_ag
  # -G --file-search-regex PATTERN # Only search files whose names match PATTERN.
}

function fsearch {
  search  "$@" | fzf
}


# ---- ALIAS'ES ----
# alias nim='docker run --rm -v `pwd`:/usr/src/app -w /usr/src/app nimlang/nim nim'
# alias python='python3'
alias s='search'
alias fz='fzf'
alias fs='fsearch'
alias ag='ag --path-to-ignore ~/.ignore_ag'
alias vim='nvim'
alias gvim='nvim'
alias nivm='nvim'
alias SortBySize='du -a --max-depth=1 | sort -n'
alias t='task'
alias cd2nvim='cd ~/.config/nvim'
alias cd2astroNvim='cd ~/.config/astronvim/lua/user'
alias cd2lvimConf='cd ~/.config/lvim'
alias cd2lvim='cd ~/.local/share/lunarvim/lvim'
alias cd2pkd='cd '$DIR_PKD
alias cd2wiki='cd '$DIR_PKD'/wiki'
alias cd2gdrive='cd '$DIR_GDRIVE
alias cd2drive='cd '$DIR_DRIVE
alias cd2d='cd '$DIR_DRIVE'/03_coding/D'
alias cd2code='cd '$DIR_DRIVE'/03_coding'
alias cd2summerschools='cd '$DIR_DRIVE'/02_insurance/00_SummerSchools_Trainings'
# alias cd2kraxli='cd ~/.cache/vim/dein/repos/github.com/kraxli'
alias cd2kraxli='cd /home/dave/.local/share/nvim/dein/repos/github.com/kraxli'
alias cd2ml='cd '$DIR_DRIVE'/01_LifeLongLearning/01_Statistics_Econometrics_Probability/01_Machine_Learning/'
alias lightLate='redshift -PO 2000 -b 0.85'
alias lightEvening='redshift -PO 2300 -b 0.85'
alias lightDay='redshift -PO 4000 -b 0.95'
alias lightBright='redshift -x'
alias lightFull='redshift -x'
alias ipython='ipython3'
# source '$DIR_DRIVE'/ActiveHome/dotfiles/.bashrc.task
alias deinCleanCach='rm -rf ~/.cache/vim/dein/.cache/*'
alias sys_version='cat /etc/*-release'
alias sys_version_by_lsb='lsb_release -a'
alias ll='ls -agh --group-directories-first'
alias ld='ls -dl */'  # show directories only
alias pip='pip3'
alias ipythonEnv="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

alias open='xdg-open'
alias python='python3'
alias r="radian"

# BIND KEYS
bindkey "jj" vi-cmd-mode

# xrandr --prop | grep " connected"
# xrandr --output eDP-1 --brightness 1

##########################################
# Shell Prompt (start of line)
##########################################
# PROMPT=$'%{\e[0;35m%}%n%{\e[0m%}'
# PROMPT=$'%{\e[0;35m%}%n%{\e[0m%} %{\e[0;92m%}%~%{\e[0m%} %{\e[0;97m$%} %{\e[0m%}'
# PS1=$'\e[0;31m$ \e[0m'

##########################################
#  Python Path
##########################################
# export PYTHONPATH="${PYTHONPATH}:/usr/lib/llvm-3.8/lib/python2.7/site-packages/lldb"
# export PYTHONPATH=/usr/lib/llvm-3.8/lib/python2.7/

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export PATH=$PATH:/home/dave/anaconda3/bin

##########################################
#  D (dlang)
##########################################
# # This loads DVM into a shell session.
# if [ -s /home/dave/.dvm/scripts/dvm ] ; then
# 	. /home/dave/.dvm/scripts/dvm
# fi
#
# # activate d / dlang: This will setup the PATH, LIBRARY_PATH, LD_LIBRARY_PATH, DMD, DC, and PS1 environment variables.
# source ~/dlang/ldc-1.18.0/activate
# # source ~/dlang/dmd-2.089.0/activate
#
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#
# export PATH=$PATH:~/z/z.sh
# . ~/z/z.sh
#
# # export PYENV_ROOT="$HOME/.pyenv"
# export PYENV_ROOT="$HOME/pyvenv/pybase"
# export PATH="$PYENV_ROOT/bin:$PATH"
# # if command -v pyenv 1>/dev/null 2>&1; then
# #   eval "$(pyenv init -)"
# # fi
# eval "source $HOME/pyvenv/pybase/bin/activate"
#
#
# if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
#  export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
# fi
#

# # CUDA
# export PATH=/usr/local/cuda-10.0/bin:$PATH
# export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH
# #or, add /usr/local/cuda-10.0/lib64 to /etc/ld.so.conf and run ldconfig as root
#

# ========= Julia ==========
export PATH=$PATH:~/.julia/julia-1.5.2/bin

# ========= GO ==========
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=$PATH:/usr/local/go

# ========= zplug ==========
# source ~/.zplug/init.zsh

# eval $(thefuck --alias)

# ========= autojump ==========
export PATH=$PATH:~/autojump/bin

# FRED key
export FRED_API_KEY='ad0d9cd25fd722a041619ebc1c24c907'

##################
#  Foxit Reader  #
##################
export PATH=$PATH:~/opt/foxitsoftware/foxitreader

###########
#  swift  #
###########
export PATH=$PATH:~/.swift/usr/bin
export PATH=$PATH:/usr/lib/postgresql/{VERSION_NUMBER}/bin
export PATH=$PATH:/usr/lib/postgresql/12/bin

###########
#  CONDA  #
###########
# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/dave/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/dave/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/dave/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/dave/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

######################
#  pyenv and poetry  #
######################

# pyenv: https://realpython.com/intro-to-pyenv/
source "$HOME/.poetry/env"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# pyenv activate base
# pyenv versions

export PYTHONSTARTUP="$HOME/.pythonrc"


##########
#  TMUX  #
##########
# see: https://koenwoortman.com/tmux-sessions-should-be-nested-with-care-unset-tmux-to-force/
# see: https://gist.github.com/todgru/6224848
# see: https://stackoverflow.com/questions/5609192/how-to-set-up-tmux-so-that-it-starts-up-with-specified-windows-opened

export PATH="$HOME/.poetry/bin:$PATH"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

 # export QT_SCALE_FACTOR=1.2

# export "PATH=$PATH:~/linuxbrew/.linuxbrew/bin/brew"
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PATH="$PATH:$HOME/julia-1.8.5/bin"

###################
# codeium fix
###################

export no_proxy=127.0.0.1
