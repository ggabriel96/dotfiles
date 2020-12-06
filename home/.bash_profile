# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# https://wiki.archlinux.org/index.php/Fish#Setting_fish_as_interactive_shell_only
if [ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ] && [ -z "$BASH_EXECUTION_STRING" ]; then
	exec fish
fi