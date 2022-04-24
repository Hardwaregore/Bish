#!/bin/bash

command -v php || echo "CRITICAL ERROR! ABORTING! (Err: php NOT INSTALLED)"
command -v curl || echo "CRITICAL ERROR! ABORTING! (Err: curl NOT INSTALLED)"
command -v unzip || echo "CRITICAL ERROR! ABORTING! (Err: unzip NOT INSTALLED)"
command -v wget || echo "CRITICAL ERROR! ABORTING! (Err: wget NOT INSTALLED)"
