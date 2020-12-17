#!/usr/bin/env sh

if [ "$ACCEPT_LICENSE" = "true" ]; then
  speedtest --accept-license
else
  echo "You must accept the license with the variable ACCEPT_LICENSE='true'" 1>&2
  exit 1
fi

speedtest "$@"