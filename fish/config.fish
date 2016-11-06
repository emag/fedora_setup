set PATH $PATH (find ~/.sdkman/**/current/bin -maxdepth 0)

# less
set hilite (which highlight)
set -x LESSOPEN "| $hilite %s --out-format xterm256 --quiet --force "
