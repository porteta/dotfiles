#[ -n "$PS1" ] && source ~/.bash_profile

alias ll='ls -l'

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export MAVEN_OPTS="-Xmx4g -XX:MaxPermSize=1g"

# Global npm without sudo
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
