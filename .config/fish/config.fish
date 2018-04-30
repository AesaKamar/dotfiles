

# Configuration backup helper for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

set PATH /usr/local/arcanist/bin $PATH
set PATH /Users/aesa/.local/bin $PATH
set PATH ~/.npm-global/bin $PATH


# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
end
# End Nix
