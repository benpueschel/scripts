#!/usr/bin/env bash

# Change the date of the last commit
# Usage: git-date.sh <date>
# If <date> is not provided, the current date is used

print_help() {
	name=$(basename "$0")
	echo "$name - Change the date of the last commit"
	echo "Usage: $name [date]"
	echo ""
	echo "If date is not provided, the current date is used"
}

if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	print_help
	exit 0
fi

if [ -n "$1" ]; then
	DATE="$1"
else
	DATE="$(date)"
fi

GIT_COMMITTER_DATE="$DATE" \
GIT_AUTHOR_DATE="$DATE" \
git commit --amend --no-edit --date="$DATE"
