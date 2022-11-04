#!/bin/bash
readarray -t fontList < <(curl -u kosurumuniraja:9985259937@kK -k https://github.com/kosurumuniraja?tab=repositories | grep -w 'itemprop="name codeRepository"' | cut -d/ -f3 | cut -d'"' -f1)
for i in "${fontList[@]}"; do
  echo "This is Repo name --> $i"
  curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer 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" -k \https://api.github.com/repos/kosurumuniraja/$i/branches/master/protection
  done
