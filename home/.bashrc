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

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/galli/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/galli/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/galli/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/galli/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/home/galli/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/home/galli/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# https://wiki.archlinux.org/index.php/Fish#Setting_fish_as_interactive_shell_only
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] && [[ -z "$BASH_EXECUTION_STRING" ]]; then
	exec fish
fi
