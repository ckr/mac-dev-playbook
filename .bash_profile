if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_private ]; then
    . ~/.bash_private
fi

#PHP
# export PATH=/Applications/MAMP/bin/php/php5.1.6/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.2.17/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.3.29/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.4.42/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php5.5.26/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH


export PATH=/Applications/Android\ Studio.app/sdk/platform-tools:$PATH
export PATH=/Applications/Android\ Studio.app/sdk/tools:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

