#!/bin/bash
readarray -t fontList < <(curl -u kosurumuniraja:9985259937@kK -k https://github.com/kosurumuniraja?tab=repositories | grep -w 'itemprop="name codeRepository"' | cut -d/ -f3 | cut -d'"' -f1)
for i in "${fontList[@]}"; do
  echo "This is Repo name --> $i"
  curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer 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" -k \https://api.github.com/repos/kosurumuniraja/$i/branches/master/protection
  done
