#!/bin/sh

# Print message
echo What exercise would you like to download?

# Get exercise
read exercise

# Download exercise
exercism download --exercise=$exercise --track=javascript

# Open test and files in Vim
tmux send-keys -t -1 "vim -o javascript/$exercise/$exercise.js javascript/$exercise/$exercise.spec.js" Enter

# Enter directory, install dependencies, run tests
cd javascript/$exercise
npm i && npm test -- --watch
