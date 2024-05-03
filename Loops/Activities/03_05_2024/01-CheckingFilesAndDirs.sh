#!bin/bash

# mkdir files
# touch files/txt.txt
# touch files/dad.txt
# touch files/ted.txt
# touch files/myOrdinaryLife.txt

# mkdir files/popSongs
# touch files/popSongs/madonna.mp3
# touch files/popSongs/'master of puppets.mp4'
# touch files/popSongs/goldenHour.mp5

collection=$( ls files )

for item in $collection; do
    if [ -d $item ]; then
        echo "'$item' is a dir!"
        
    elif [ -f $item ]; then
        echo "'$item' is a file!"
        
    else 
        echo "'$item' is written in an unknown format..."
        ls -l $item
    fi
done

