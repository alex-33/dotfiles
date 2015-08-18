#!/bin/sh
# clip-desktop - maybe under, $HOME/bin if that's on your PATH?
test -p $HOME/tmp/paste-desktop || mkfifo $HOME/tmp/paste-desktop
cat > $HOME/tmp/paste-desktop
