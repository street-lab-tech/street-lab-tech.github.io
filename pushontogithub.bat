@echo off

setlocal enabledelayedexpansion

set repo=street-lab-tech/street-lab-tech.github.io
set folder=street-lab
set git=git
set timestamp=%date:/=-%_%time::=-%

echo "Building site..."
jekyll build

echo "Adding changes to Git..."
%git% add --all

echo "Committing changes to Git..."
%git% commit -m "Update site at %timestamp%"

pause


echo "Pushing changes to GitHub..."
%git% push

pause


echo "Site updated at %timestamp%"

endlocal
