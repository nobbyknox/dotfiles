alias ll='CLICOLOR_FORCE=1 ls -lh $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'
alias la='CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'
alias lll='CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX'

# GIT aliases
alias git-br='git --no-pager branch'
alias git-st='git status'
alias git-ci='git commit'
alias git-hist='git hist'

alias dk='docker'
alias mi='mvn install -Dmaven.test.skip=true -DskipTests -Dmaven.javadoc.skip=true'
