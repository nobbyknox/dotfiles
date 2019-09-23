#!/bin/sh

say_hello()
{
    echo "Start of hello script"
    echo "1: $1"
    echo "2: $2"
    echo "3: $3"
    echo "4: $4"
    echo "all: $*"
}

# deprecated - use ll
# fl()
# {
#     CLICOLOR_FORCE=1 ls -lh $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
# }

# deprecated - use la
# fla()
# {
#     CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
# }

# ll()
# {
#     CLICOLOR_FORCE=1 ls -lh $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
# }

# la()
# {
#     CLICOLOR_FORCE=1 ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
# }

# lll()
# {
#     la $*
# }

top_5()
{
    history | awk '{print $2}' | sort | uniq -c | sort -nr | head -5
}

net_mon()
{
    nload -a 10 -u M
}

net_scan()
{
    sudo nmap -sP 192.168.10.0/24
}

to_bp()
{
    cd /Users/nobby/dev/bookmark-pivot
}

to_compose_env()
{
    cd /Users/nobby/dev/bookmark-pivot/compose-env
}

to_cloud_city()
{
    cd /Users/nobby/dev/bookmark-pivot/cloud-city
}

to_death_star()
{
    cd /Users/nobby/dev/bookmark-pivot/death-star
}

to_docs()
{
    cd /Users/nobby/dev/bookmark-pivot/docs
}

to_executor()
{
    cd /Users/nobby/dev/bookmark-pivot/executor
}

j()
{
    echo $1
}

# ------------------------------------------------------------------------------
# Editing files
# ------------------------------------------------------------------------------

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-nvim} "${files[@]}"
}

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  IFS=$'\n' out=($(fzf --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}
