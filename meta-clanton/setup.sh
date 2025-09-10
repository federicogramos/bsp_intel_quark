#!/bin/sh
set -e

echo "Fetching in Quark SW ingredients Now"
setup/combo-layer -c setup/combolayer-quark.conf init
git commit -m "Initial population for Quark v1.1" || true

# Process any patches place in setup directory...
for f in setup/*.patch
do
  printf 'Applying patch %s\n' "$f" ; git am "$f"
done

# uncomment the following line if you don't need git tracking
# rm -rf .git
