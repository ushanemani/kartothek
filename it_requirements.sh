#!/bin/bash
set -xeo pipefail


if [[ "${KARTOTHEK_ARROW_VERSION}" = "0.XX.0" ]]; then

   echo "uninstalling numpy and pandas"

   pip uninstall -y numpy pandas

   echo "installing Nightly build of numpy pandas"

   PRE_WHEELS="https://7933911d6844c6c53a7d-47bd50c35cd79bd838daf386af554a83.ssl.cf2.rackcdn.com"
   pip install --pre --no-deps --upgrade --timeout=60 -f $PRE_WHEELS numpy pandas


else

fi
