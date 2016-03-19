#!/bin/sh
# I run this locally.
# dev-host is the host I ssh to.

devhost="alexdral.desktop.amazon.com"

ssh $devhost 'test -p ~/tmp/paste-desktop || mkfifo ~/tmp/paste-desktop' && 
while ssh $devhost 'cat ~/tmp/paste-desktop' | xclipboard;
do 
      xclipboard -o; # just to see what's getting passed on to xclip...
done
