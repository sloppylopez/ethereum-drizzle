#!/usr/bin/env bash
kill -9 $(lsof -i | grep 'node' | awk '{print $2}' | uniq)
ganache-cli -b 3
truffle compile
truffle migrate
#Serves the front-end on http://localhost:3000
npm run start