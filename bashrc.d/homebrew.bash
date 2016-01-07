# add autocompletion for homebrew commands
if [ -f `brew --repository`/Library/Contributions/brew_bash_completion.sh ]; then
   source `brew --repository`/Library/Contributions/brew_bash_completion.sh
fi
