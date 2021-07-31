export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

function cdls () {
    cd "$@" && ls
    }
alias cd=cdls



export PATH=$PATH:/Library/ApacheSpark/bin
# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PATH=~/Library/Python/2.7/bin/:$PATH


# Setting up Conscript, a sbt command line util
export CONSCRIPT_HOME="$HOME/.conscript"
export CONSCRIPT_OPTS="-XX:MaxPermSize=512M -Dfile.encoding=UTF-8"
export PATH=$CONSCRIPT_HOME/bin:$PATH

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH=~/.local/bin:$PATH

# Docker stuff
alias dockerkill='docker rm -f $(docker ps -a -q)'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


# .NET Mono F# stuff
export PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin/alias config='/usr/bin/git --git-dir=/Users/aesa/.cfg/ --work-tree=/Users/aesa'


# Configuration backup helper for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
if [ -e /Users/aesa/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/aesa/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
if [ -e /Users/aesakamar/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/aesakamar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
