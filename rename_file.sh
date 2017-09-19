#!/bin/bash
# before running `sudo chmod 755 rename_file.sh`
echo Hello, what is the file extension of the original file e.g mp4, html, mp3, 3gp, clean ?

read extname

echo You want to convert $extname to which extension e.g mp4, html, mp3, 3gp, clean ?

read newextname

echo convert .${extname} to .${newextname} .....
if [ ! -z "$extname" -a "$extname" != " " -a ! -z "$newextname" -a "$newextname" != " " ]; then
    echo "Converting, please wait ...."
    for file in *.${extname}; do
        mv "$file" "$(basename "$file" .${extname}).${newextname}"
    done
    echo 'File extension rename successful!!'
else
    echo "Error in input"
fi
# TODO: cleanup rename extension to whatever you like