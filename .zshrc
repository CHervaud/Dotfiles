# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/loon/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        zsh-autosuggestions
        colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

alias l="clear;ls -hla"
alias v="nvim"
alias \*="cd .."
alias \*\*="cd ..;l"
alias \*\*\*="cd ..;cd ..;l"
alias q="exit"
alias emacs="echo \"vim > emacs\";v"
alias c="mr_clean;l"
alias e="coloroutput"
alias lib="~/Documents/./lib"
alias cl="clear"
alias sl="sl -Flac"
alias ut="c; make tests_run; gcvr"
alias gcvr="gcovr --exclude tests/; gcovr --exclude tests/ --branches"
alias gss="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gacp="git add .;git commit -m \"Update\";git push"
alias gp="git push"
alias gpl="git pull"
alias gs="git switch"
alias gb="git branch"
alias gbdel="git branch -D"
alias gbdelr="git push origin --delete"
alias grest="git restore --staged ."
alias nrm="norminette -t -A --indent=4 --major=3"
alias trouve="grep -rn $1"
alias search="grep -rl $1"
alias debg="make CC=\"gcc -g3\" re"
alias myvalgrind="valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all"
alias Gupdate="sudo pacman -Sy; sudo pacman -Syu; sudo pacman -Syy; sudo pacman -Syyy"
alias mkae="make"
alias mkea="make"
alias mkae="make"
alias kmae="make"
alias maek="make"
alias mak="make"
alias mke="make"
alias mnoerr="make CFLAGS="" re"
alias ipad_home="sshpass -p alpine ssh root@192.168.1.51"
alias ipad_ionis="sshpass -p alpine ssh root@10.134.200.45"
#alias ls="echo sleep 1 >> ~/.bashrc; ls"

function gda {
    git diff $1
    git add $1
}

function gbs {
    git branch $1
    git switch $1
}

function cdl {
    cd $1
    ls
}

function govi {
    cd $1
    v .
    cd ..
}
