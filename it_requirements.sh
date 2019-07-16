#!/bin/bash


if [ "$${KARTOTHEK_ARROW_VERSION}" == "0.XX.0" ];
then
    echo "installing Nightly build of PY-ARROW"

    pip install --pre --no-deps --upgrade --timeout=60 --no-cache-dir -f "https://github.com/ursa-labs/crossbow/releases/download/latest" pyarrow

    pytest --cov kartothek --cov-report xml --cov-report html

fi