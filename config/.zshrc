# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ------------ GO AHEAD RÓB CO CHCESZ --------------	
export PATH="$HOME/bin:$PATH"
# --- PLUGINY ---
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- HISTORIA ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory sharehistory

# --- OPCJE ---
setopt autocd 
setopt correct 

# --- PROMPT ---
PROMPT='%F{cyan}%n@%m%f:%F{blue}%~%f$ '

# --- START ---
fastfetch

# --- ALIASY ---
alias clear='printf "\033c" && fastfetch'
alias hyprconf=alias hyprconf='~/.config/hypr/conf_menu.sh'
alias zshconf='nano ~/.zshrc'
alias fetchconf='nano ~/.config/fastfetch/config.jsonc'
alias muzik='printf "\033c" && trackinfo'
alias clr='printf "\033c"'
