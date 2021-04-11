# aliases
alias vim=nvim
alias doom=/Users/jz/.emacs.d/bin/doom 
alias vi=nvim
source ~/.bash_profile
# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
export SDKROOT="$(xcrun --sdk macosx --show-sdk-path)"
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
[[ -s /Users/jz/.autojump/etc/profile.d/autojump.sh ]] && source /Users/jz/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# opam configuration
test -r /Users/jz/.opam/opam-init/init.zsh && . /Users/jz/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -e /Users/jz/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jz/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jz/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="${HOME}/.local/bin:${PATH}"
[ -f "/Users/jz/.ghcup/env" ] && source "/Users/jz/.ghcup/env" # ghcup-env
