#!/bin/bash

if ! [[ -d .zip ]];then
  mkdir .zip
fi

for file in .bin/*
do
  name="$(basename "$file")"
	zip -FSr -j .zip/"$name".zip .bin/"$name"
done

