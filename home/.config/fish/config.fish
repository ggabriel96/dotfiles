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

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/gabrielgalli/miniforge3/bin/conda
    eval /home/gabrielgalli/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/gabrielgalli/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/gabrielgalli/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/gabrielgalli/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<
