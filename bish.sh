#!/bin/bash

require_root() {
  if [ "$(id -u)" != "0" ]; then
    echo "CRITICAL ERROR! ABORTING! (Err: NOT root)" 1>&2
    exit 1
  fi
}



command -v php > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: php NOT INSTALLED)"
command -v curl > /dev/null|| echo "CRITICAL ERROR! ABORTING! (Err: curl NOT INSTALLED)"
command -v unzip > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: unzip NOT INSTALLED)"
command -v wget > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: wget NOT INSTALLED)"
