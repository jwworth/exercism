#!/bin/sh

# Get exercise
echo What exercise would you like to download?
read exercise

# Get langauge
echo In what language?
read language

# Download exercise
exercism download --exercise=$exercise --track=$language

# Open files in Vim and start test runs
case $language in
  "javascript")
    tmux send-keys -t -1 "vim -o $language/$exercise/$exercise.js $language/$exercise/$exercise.spec.js" Enter

    cd $language/$exercise

    npm i && npm test -- --watch
  ;;
  "ruby")
    tmux send-keys -t -1 "vim -o $language/$exercise/$exercise.rb $language/$exercise/$exercise\_test.rb" Enter

    cd $language/$exercise

    watch ruby $exercise\_test.rb
    ;;
esac
