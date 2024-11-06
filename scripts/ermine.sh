#!/bin/bash

DIRECTORY="$1"

echo "Mull"
echo "Replacing file content"
find "$DIRECTORY" -type f \
  -not -path "*/scripts/*" \
  -not -path "*/.git*/*" \
  -exec sed -i 's/Mull/Ermine/g' {} +
find "$DIRECTORY" -type f \
  -not -path "*/scripts/*" \
  -not -path "*/.git*/*" \
  -exec sed -i 's/mull/ermine/g' {} +

find "$DIRECTORY" -type f \
  -not -path "*/scripts/*" \
  -not -path "*/.git*/*" \
  -exec sed -i 's/us\.spotco/com\.deeperwire/g' {} +

echo "Replacing file name"
find "$DIRECTORY" -depth \
  -not -path "*/.git*/*" \
  -name "*mull*" \
  -execdir bash -c 'mv "$1" "${1//mull/ermine}"' _ {} \;
find "$DIRECTORY" -depth \
  -not -path "*/.git*/*" \
  -name "*us.spotco*" \
  -execdir bash -c 'mv "$1" "${1//us.spotco/com.deeperwire}"' _ {} \;

echo "Fennec"
echo "Replacing file content"
find "$DIRECTORY" -type f \
  -not -path "*/scripts/*" \
  -not -path "*/.git*/*" \
  -exec sed -i 's/fennec_dos/ermine/g' {} +

echo "Replacing file name"
find "$DIRECTORY" -depth \
  -not -path "*/.git*/*" \
  -name "*fennec_dos*" \
  -execdir bash -c 'mv "$1" "${1//fennec_dos/ermine}"' _ {} \;
