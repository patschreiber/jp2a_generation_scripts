#!/bin/sh

echo "You remembered to not add '.jpg' at the end of the filename, right?"

FILENAME=$1
echo "Generating..."


echo "...Grayscale regular done!"
jp2a --color --grayscale --width=180 --background=dark $FILENAME.jpg --html > './html/$FILENAME_dark.html'
jp2a --color --grayscale --width=180 --background=light $FILENAME.jpg --html > './html/$FILENAME_light.html'

echo "...Grayscale inverted done!"
jp2a --color --grayscale -i --width=180 --background=dark $FILENAME.jpg --html > './html/$FILENAME_dark.html'
jp2a --color --grayscale -i --width=180 --background=light $FILENAME.jpg --html > './html/$FILENAME_light.html'

echo "...Grayscale fill done!"
jp2a --color --grayscale -fill --width=180 --background=dark $FILENAME.jpg --html > './html/$FILENAME}_dark_fill.html'
jp2a --color --grayscale -fill --width=180 --background=light $FILENAME.jpg --html > './html/${FILENAME}_light_fill.html'

echo "...Grayscale fill inverted done!"
jp2a --color --grayscale -i --fill --width=180 --background=dark $FILENAME.jpg --html > './html/${FILENAME}_dark_inverted_fill.html'
jp2a --color --grayscale -i --fill --width=180 --background=light $FILENAME.jpg --html > './html/{$FILENAME}_light_inverted_fill.html'

echo "...done!"
