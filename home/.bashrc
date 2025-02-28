# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -e "${HOME}/.nix-profile/etc/profile.d/nix.sh" ]; then
    . "${HOME}/.nix-profile/etc/profile.d/nix.sh"
fi

if [ -e "${HOME}/.cargo/env" ]; then
    source "${HOME}/.cargo/env"
fi

if [ -e "${HOME}/.poetry/env" ]; then
    source "${HOME}/.poetry/env"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("${HOME}/miniforge3/bin/conda" 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/miniforge3/etc/profile.d/conda.sh" ]; then
        . "${HOME}/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# https://wiki.archlinux.org/index.php/Fish#Setting_fish_as_interactive_shell_only
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] && [[ -z "$BASH_EXECUTION_STRING" ]]; then
	exec fish
fi
