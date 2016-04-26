#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)

. $folder/deactivate.sh && . $folder/activate.sh
