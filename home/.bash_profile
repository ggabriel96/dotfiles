# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Connect to and initalize gnome-keyring-daemon when in sway session
# https://wiki.archlinux.org/index.php/GNOME/Keyring#Terminal_applications
if [ "${DESKTOP_SESSION}" = "sway" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
