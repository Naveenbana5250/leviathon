#!/usr/bin/env bash
set -e
need=(
  "policies/phase1-policies.yaml"
  ".github/workflows/build-sign-push.yml"
  "README.md"
)
ok=1
for f in "${need[@]}"; do
  if [ -f "$f" ]; then echo "PASS  $f"; else echo "MISS  $f"; ok=0; fi
done
echo
git remote -v
echo
git ls-files | sort
exit $((1-ok))
