#!/usr/bin/env bash
set -euo pipefail

export SQLITE_URL="https://www.sqlite.org"
#export SQLITE_HISTORY_URL="${SQLITE_URL}/chronology.html"

# Borrowed from https://github.com/rbenv/ruby-build/pull/631/files#diff-fdcfb8a18714b33b07529b7d02b54f1dR942
function sort_versions() {
	sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
		LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

# Borrowed from https://github.com/danhper/asdf-python/blob/master/bin/utils.sh
echoerr() {
	printf "\033[0;31m%s\033[0m" "$1" >&2
}

get_sqlite_url() {
	curl -L --silent "$SQLITE_URL/$1"
}
