

# Configuration backup helper for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Don't forget to set npm to install packages in home
## > `mkdir ~/.npm-global` `npm config set prefix '~/.npm-global'`
set PATH ~/.npm-global/bin $PATH

set PATH ~/.nix-profile/bin/ $PATH
set PATH ~/.local/bin $PATH
set PATH $GOPATH/bin $PATH


# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
  fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
end
set PATH /nix/var/nix/profiles/default/bin/ $PATH

eval (bash -c "source ~/.nix-profile/etc/profile.d/nix.sh; echo export NIX_PATH=\"\$NIX_PATH\"; echo export PATH=\"\$PATH\"; echo export NIX_SSL_CERT_FILE=\"\$NIX_SSL_CERT_FILE\"")
# End Nix


alias chrome='open -a Google\ Chrome --args --disable-web-security'

#kubernetes
#kubectl config use-context dorp > /dev/null

#wget everything
function wgetAll
  command wget \
    --recursive \
    --page-requisites \
    --html-extension \
    --convert-links \
    --restrict-file-names=windows \
    # capture the subdomain and the domain of the url
    --domains (echo $argv | sed -e 's|^[^/]*//||' -e 's|/.*$||') \
    --no-parent \
      $argv
end

# Mac notify callback
function notify 
    osascript -e 'display notification "" with title "Done"'
end

#SBT
export SBT_OPTS="-Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=4G -Xss4M  -Duser.timezone=EST"

# Better tree with .gitignore
function treegit
  tree --prune -I (cat .gitignore ~/.gitignore | \
  egrep -v "^#.*\$|^[[:space:]]*\$" | \
  tr "\\n" "|")
end

#Custom keybindings
bind \cw backward-kill-bigword


## Source the default profile
# ==============================================================================
fenv source ~/.profile


## EVEN FINANCIAL SPECIFIC
# ==============================================================================

set PATH ~/Code/EVENFinancial/even-cli/bin $PATH

set PATH ~/sem/bin $PATH

#Python LOCAL
set PATH ~/Library/Python/2.7/bin/ $PATH
set PATH /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages $PATH


#Node JS
export NODE_OPTIONS="--max_old_space_size=4096"

set PATH ~/Code/misc/Workbench-Build125.4 $PATH


# Graal 
set PATH /Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.2.0/Contents/Home/bin $PATH

# Coursier 
#set PATH "/Users/aesakamar/Library/Application\ Support/Coursier/bin" $PATH

set PATH ~/flutter/bin $PATH