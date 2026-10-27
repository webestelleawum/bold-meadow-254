#!/usr/bin/env bash
# bold-meadow-254 — Network engineer working on containers and learning along the way.
# 拿来练手的小仓库
set -euo pipefail

file="${1:-data.txt}"
sort "$file" | uniq -c | sort -rn | awk '{{printf "%4d  %s\n", $1, substr($0, index($0,$2))}}'
echo "---"
echo "$(sort -u "$file" | wc -l) unique / $(wc -l < "$file") lines"
