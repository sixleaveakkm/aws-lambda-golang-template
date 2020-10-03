#!/bin/bash

for file in ./bins/*
do
  if test -d "$file"; then
    name="$(gsed 's/^[[:upper:]]/\L&/;s/[[:upper:]]/\L-&/g' <<< "$(basename $file)")"
    env GOOS=linux go build -ldflags="-s -w" -o .bin/"$name" "$file"/main.go
  fi
done
