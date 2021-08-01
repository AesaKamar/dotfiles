
if [ -e /Users/aesakamar/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/aesakamar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export MFA_ARN="arn:aws:iam::617208391173:mfa/aesa "
export PGDATA="/usr/local/pgsql/data"
export PATH=$PATH:/usr/local/Cellar/postgresql\@9.4/9.4.21/bin/

ulimit -n 20000
ulimit -u 2048

export SBT_OPTS="-Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=4G -Xss4M  -Duser.timezone=EST"

export NODE_OPTIONS="--max_old_space_size=4096"

export CHAMBER_KMS_KEY_ALIAS=aws/ssm

export PATH=$PATH:~/Code/EVENFinancial/even-cli/bin

