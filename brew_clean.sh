#!/bin/bash

echo "Creating Brewfile"
brew bundle dump
echo "Removing unwanted dependencies"
brew bundle --force cleanup 
rm -f Brewfile
echo "Done"
