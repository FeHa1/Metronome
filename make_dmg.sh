#!/bin/sh
# This script is used to create the disk 
# image installer on macOS. To run this 
# script you should install pyinstaller
# and create-dmg first by using:

# pip install pyinstaller
# brew install create-dmg

rm -rf build dist/*

#################################################
# Create app file using pyinstaller
#################################################

pyinstaller --name 'Metronome' \
		    --windowed  \
            --add-data='./strong_beat.wav:.' \
            --add-data='./weak_beat.wav:.' \
            metronome.py

#################################################
# Build the application bundle into a disk image
#################################################

# Create a folder (named dmg) to prepare our DMG in 
# (if it doesn't already exist).
mkdir -p dist/dmg
# Empty the dmg folder.
rm -rf dist/dmg/*
# Copy the app bundle to the dmg folder.
cp -r "dist/Metronome.app" dist/dmg
# If the DMG already exists, delete it.
test -f "dist/Metronome.dmg" && rm "dist/Metronome.dmg"
create-dmg \
  --volname "Metronome" \
  --window-pos 200 120 \
  --window-size 600 300 \
  --icon-size 100 \
  --icon "Metronome.app" 175 120 \
  --hide-extension "Metronome.app" \
  --app-drop-link 425 120 \
  "dist/Metronome.dmg" \
  "dist/dmg/"
