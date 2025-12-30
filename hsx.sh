#!/usr/bin/env bash

hsx() {
  local file="${1:-/dev/stdin}"
  mkdir -p status_codes
  awk '
  {
    url=$1
    for(i=2;i<=NF;i++)
      if($i ~ /^\[[0-9]{3}\]$/) {
        code=substr($i,2,3)
        print url >> ("status_codes/status_" code ".txt")
      }
  }' "$file"
  echo "Output saved in ./status_codes/"
}
