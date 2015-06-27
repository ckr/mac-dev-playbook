if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PATH=/Applications/MAMP/bin/php/php5.5.23/bin/:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/Android\ Studio.app/sdk/platform-tools:$PATH
export PATH=/Applications/Android\ Studio.app/sdk/tools:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)