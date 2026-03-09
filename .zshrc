# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Linux Bash
alias du1="du -h --max-depth=1"
alias sai="sudo apt-get install"
alias lh="ls -hl"
alias c="clear"
alias h="history"
alias ..="cd .."
alias ...=../..
alias ....=../../..
alias 1='cd -1'
alias 2='cd -2'
alias psg="ps aux | grep"
alias rd="rmdir"
alias md="mkdir -p"
# Mac bash
alias count_lines="find . -type f | wc -l"
alias count_num_of_files="ls -1 | wc -l"
alias tc="tee >(pbcopy)"
# Git
alias g="git"
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gcm="git commit"
alias gcmm="git commit -m"
alias gd="git diff"
alias gds="git diff --staged"
alias gck="git checkout"
alias gl="git log --all --graph --decorate"
alias gl1="git log --all --graph --decorate --oneline"
alias grs="git reset"
alias gs="git status"
alias gpl="git pull"
alias gpr="git pull --rebase"
alias gp="git push"
# Tools
alias a="ansible"
alias k="kubectl"
alias t="terraform"
# Python env
alias p="python"
alias ca="conda activate"
alias cde="conda deactivate"
alias act="source .venv/bin/activate"
alias uvp="uv pip install"
alias uvpr="uv pip install -r requirements.txt"
# Java
alias build="./gradlew clean build -x test"
# Intellij
if [[ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]]; then
  bindkey "^[^[OD" beginning-of-line
  bindkey "^[^[OC" end-of-line
  bindkey "^[^[[3~" kill-word
fi

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# PATH
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.local/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
