export TERM='xterm-256color'

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

PATH=${PATH}:/usr/local/share/python
export PATH=/usr/local/bin:$PATH # OSX Lion bin path

PS1='[\u] \[\033[1;33m\]\w\[\033[0m\] \[\033[0m\]\n\$ '

# aliases
alias grep="grep --color"
alias egrep="egrep --color"
alias less="less -Xr"

alias la="ls -a"
alias ll="ls -lah"
alias ls="ls -G"

# fix encoding python
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# python
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# default virtualenv
if [ -n "$VIRTUAL_ENV" ]; then
  . "$VIRTUAL_ENV/bin/activate"
else
  workon default
fi

# personal projects configs
if [ -f ~/.bash_projects ]; then
   source ~/.bash_projects
fi
