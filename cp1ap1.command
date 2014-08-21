#!/bin/bash
# Double click on this file... OS X runs it in shell
# Copies the GradHandbook to dopey
#  dopey.cs.vt.edu:/Users/mapq/Sites/gpc/
# then rsync up to the server the current copy,

echo "cd ${0%/*}"/out/webhelp/
cd "${0%/*}"/out/webhelp/
rsync --exclude=*.command -e ssh -avz ./* mperezqu@ap1.cs.vt.edu:/web/hosting/gpcstudents/handbook/
# mv ../pdf/handbook.pdf ../pdf/handbook-full.pdf
scp ../pdf/handbook*.pdf mperezqu@ap1.cs.vt.edu:/web/hosting/gpcstudents/handbook/

# mv ../epub/handbook.epub ../epub/handbook-full.epub
scp ../epub/handbook*.epub mperezqu@ap1.cs.vt.edu:/web/hosting/gpcstudents/handbook/

