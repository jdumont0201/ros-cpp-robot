#!/bin/bash
# test if /etc/passwd exists

if test -e /etc/passwd; then
  echo "Alright man..." >&2
else
  echo "Yuck! Where is it??" >&2
  exit 1
fi
