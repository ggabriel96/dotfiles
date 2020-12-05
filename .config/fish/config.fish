# Environment variables
set -gx UID (id -u)
set -gx GID (id -g)
set -gx CURRENT_UID "$UID:$GID"

set -gx EDITOR nvim
set -gx PATH "$PATH:$HOME/bin/"

set NPM_PACKAGES "$HOME/.npm-packages/"
set -gx PATH "$PATH:$NPM_PACKAGES/bin/"
set -q MANPATH || set MANPATH (manpath)
set -gx MANPATH "$MANPATH:$NPM_PACKAGES/share/man/"

set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
set -q PATH; or set PATH ''; set -gx PATH "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $PATH;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;

# Aliases
alias gst="git status"
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}'"
alias dcu="docker-compose up --abort-on-container-exit"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval "$HOME/miniconda3/bin/conda" "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

