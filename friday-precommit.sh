#!/bin/sh
#
# Pre-commit hook to prevent committing stuff on a friday.
# If you feel the necessity to ask why such a precommit hook would exist
# Either you are not from around here or you are on god-mode.
#
# To enable this hook, rename this file to "pre-commit" without the extension and place it on ".git/hooks" path of your repository.

DAYOFWEEK=$(date +"%u")
echo DAYOFWEEK: $DAYOFWEEK

if [ "$DAYOFWEEK" -eq 5 ];  
then 
messages=("Commit denied..Friday protocol violation" "Dude! Stop!Its Friday" "You really wanna do this on a Friday" "Someone wants to check-in code on Friday and lose a weekend" "Nope!! Not on a Friday" "Its Friday Friday! No commits on a Friday!")
message=${messages[ $(( RANDOM % ${#messages[@]} )) ] }
echo $message
exit 1;
else
  echo "Not friday... on your way lord commander!"
fi