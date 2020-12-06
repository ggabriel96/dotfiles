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

# https://wiki.archlinux.org/index.php/Fish#Setting_fish_as_interactive_shell_only
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]] && [[ -z "$BASH_EXECUTION_STRING" ]]; then
	exec fish
fi