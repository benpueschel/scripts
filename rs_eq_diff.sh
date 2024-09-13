#!/usr/bin/env bash

# This script is used to diff when an assert_eq! macro fails in Rust.
# It is intented to be used in conjunction with the `cargo test` command.
#
# Usage: `cargo test | rs_eq_diff.sh`
#
# This will output the diff of the two values that failed the assertion.
#
# Example:
# ```
# assertion `left == right` failed
#  left: "hello, left"
#  right: "hello, right"
# note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
# ```
# Will output:
# ```
# [-left:-]{+right:+} "hello, [-left"-]{+right"+}
# ```

hit_assertion=false
lines=()
while read line
do
	if [[ $line == *"assertion \`left == right\` failed"* ]]; then
		hit_assertion=true
	fi

	if [[ $hit_assertion == true ]]; then
		lines+=("$line")
	fi
done < /dev/stdin

echo "${lines[1]}" > /tmp/a
echo "${lines[2]}" > /tmp/b

git diff --word-diff --no-index /tmp/a /tmp/b
