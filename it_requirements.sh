#!/bin/bash

echo "installing Nightly build of PY-ARROW"

pip install --pre --no-deps --upgrade --timeout=60 --no-cache-dir -f "https://github.com/ursa-labs/crossbow/releases/download/latest" pyarrow

