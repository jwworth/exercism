#!/bin/sh

echo What exercise would you like to download?
read exercise
echo exercism download --exercise=$exercise --track=javascript
cd javascript/$exercise
npm i && npm test -- --watch
