#{{{ Aliases

#{{{ Shell Conveniences

alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias mk=popd

#alias ctags='/usr/local/bin/ctags'
alias cp="cp -v"
alias rm="rm -v"
alias ls="ls -FG"
alias ll="ls -alG"
alias less="less -I"
alias h="history 1 -1 | less"
alias mysql="mysql --auto-rehash"
alias parse_json_perl="perl -MData::Dumper -MJSON=from_json -ne'print Dumper(from_json(\$_))'"
alias j="jobs"
alias worksf="work sf"
alias workpa="work sf"
alias workremote="work remote"
#alias jump="workremote && ssh -v j 'hostname; while [ 1 ]; do echo -n "."; sleep 60; done;'; worksf"
alias jump="ssh -v j 'hostname; while [ 1 ]; do echo -n "."; sleep 60; done;'"
alias gd="git diff"
alias gdfc="git dfc"
alias gs="git status"
alias curlsquid="curl -x 'http://localhost:3128'"
alias curlsocks="curl -x 'socks5h://localhost:9999'"
alias curlsocks20="curl -x 'socks5h://localhost:9920'"
alias curlsocks21="curl -x 'socks5h://localhost:9921'"
alias curlsocks22="curl -x 'socks5h://localhost:9922'"
alias curlsocks23="curl -x 'socks5h://localhost:9923'"
alias stageapibuy='ssh api.buy.stage.btrll.com'
alias prodapibuyslave='ssh api-buy-v02-00f.btrll.com'
alias stagetrafficker='ssh trafficker-v03-00b.stage.btrll.com'
alias prodtrafficker='ssh trafficker-v03-00a.btrll.com'
alias bx='bundle exec'
alias ${silo}db='mysql -u root ${silo}_dev'
#alias vm='ssh -D 9998 -p 2222 localhost'
#alias vmnoproxy='ssh -p 2222 localhost'
#alias vm='ssh -D 9998 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ${USER}@127.0.0.1 -p 2222'
#alias vmnoproxy='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ${USER}@127.0.0.1 -p 2222'
alias vmstart="cd $HOME/git/adserv_vagrant && vagrant up"
alias vmssh="cd $HOME/git/adserv_vagrant && ./ssh_as_me;"

#export GIT="ssh://git@git.btrll.com/home/git/repo"
#git config --global alias.st 'status'
#git config --global alias.co 'checkout'
#git config --global alias.mrg 'merge --no-ff --no-commit'

#}}}

#{{{ Package management
#
#if [[ -x =aptitude ]]; then
#  alias attd="sudo xterm -C aptitude"
#else
#  if [[ -x =emerge ]]; then
#    alias emu='sudo emerge -uDN world'
#    alias emup='sudo emerge -uDvpN world'
#    alias esy='sudo emerge --sync'
#    alias ei='sudo emerge'
#    alias eip='sudo emerge -vp '
#    alias packmask='sudo vi /etc/portage/package.unmask'
#    alias packuse='sudo vi /etc/portage/package.use'
#    alias packkey='sudo vi /etc/portage/package.keywords'
#  fi
#fi
#
#}}}

#{{{ SSH

#if [[ $HOST = FrewSchmidt ]]; then
#    alias sf='ssh frew@FrewSchmidt2'
#else
#    alias sf='ssh frew@FrewSchmidt'
#fi
#
#alias enosh='ssh schmidtf@enosh.letnet.net'
#
#alias s31='ssh 192.168.3.1'
#alias s39='ssh 192.168.3.9'
#}}}

#{{{ Misc.
#if [[ -x `which tea_chooser` ]]; then
# I need to do this more elegantly...
#    alias rt='cd /home/frew/bin/run/tea_chooser; ./randtea.rb'
#fi

# CPAN and sudo don't work together or something
#if [[ -x `which perl` ]]; then
#  alias cpan="su root -c 'perl -MCPAN -e \"shell\"'"
#fi

# Maxima with line editing!  Now if only I could use zle...
#if [[ -x `which maxima` && -x `which ledit` ]]; then
#  alias maxima='ledit maxima'
#fi

# Convenient.  Also works in Gentoo or Ubuntu
#if [[ -x `which irb1.8` ]]; then
#  alias irb='irb1.8 --readline -r irb/completion'
#else
#  alias irb='irb --readline -r irb/completion'
#fi

# For some reason the -ui doesn't work on Ubuntu... I need to deal with that
# somehow...
#if [[ -x `which unison` ]]; then
#  alias un='unison -ui graphic -perms 0 default'
#  alias un.='unison -ui graphic -perms 0 dotfiles'
#fi

# This is how you can see all of my passwords.
#alias auth='view ~/.auth.des3'

# copy with a progress bar.
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

# I use the commands like, every day now
#alias seinr="sudo /etc/init.d/networking restart"
#if [[ -x `which gksudo` && -x `which wlassistant` ]]; then
#  alias gkw="gksudo wlassistant&"
#fi

#}}}

#{{{ Globals...

alias -g G="| grep"
alias -g L="| less"

if [[ `uname` == 'Darwin' ]]; then
  alias resetcam="sudo killall VDCAssistant"
fi

#}}}

#{{{ Suffixes...

if [[ $DISPLAY = '' ]] then
  alias -s txt=vi
else
  alias -s txt=gvim
fi

#}}}

#}}}
alias killdock="killall -KILL Dock"
alias tmuxattach="ssh -t possessednest.corp.gq1.yahoo.com 'tmux attach'"
alias proxystgdb="ssh -v -L 3306:stg-yampdb.ybp.yahoo.com:3306 stg-api06.pbp.ne1.yahoo.com"
alias recent='find . -type f -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -10 | cut -f2- -d" "'
