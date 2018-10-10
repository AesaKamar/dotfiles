

# Configuration backup helper for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


set PATH ~/.npm-global/bin $PATH
set PATH ~/.nix-profile/bin/ $PATH
set PATH ~/.local/bin $PATH


# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
end
set PATH /nix/var/nix/profiles/default/bin/ $PATH
# End Nix


alias chrome='open -a Google\ Chrome --args --disable-web-security'

#kubernetes
kubectl config use-context dorp > /dev/null
