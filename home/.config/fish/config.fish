# Environment variables
set -gx UID (id -u)
set -gx GID (id -g)
set -gx CURRENT_UID "$UID:$GID"

set -gx EDITOR kak
set -gx PATH "$PATH:$HOME/.local/bin/"

# Aliases
alias gst="git status"
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}'"
alias act="conda activate"
alias deact="conda deactivate"
alias new-env="conda env create -f environment.yml"

if test -f "$HOME/miniconda3/bin/conda"
    eval "$HOME/miniconda3/bin/conda" "shell.fish" "hook" $argv | source
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

