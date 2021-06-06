#!/bin/bash

echo "## Embulk libraries" > ../README.md
echo "" >> ../README.md

grep '^org.embulk' ./gradle/dependency-locks/embulkPluginRuntime.lockfile \
  | sort \
  | sed -e 's/^org.embulk://' \
  | awk -F: 'BEGIN{ print "| name | version |"; print "|----|----|" }{ print "| "$1" | "$2" |" }' >> ../README.md
