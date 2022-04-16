#!/bin/sh
set -eux

# No argargs.
# Example usage: sh make-gtk.sh

# An array of all iterami GTK repositories.
repositories='
Browser.gtk
random_number_test.gtk
TextEditor.gtk
WebBrowser.gtk
'

# make
for repository in $repositories
do
    cd ~/.iterami/repositories/$repository
    make
done
