#!/bin/bash
# set the $VFILE to make sure you are editing the correct file
# echo ffmpeg -i $VFILE -ss $start -to $end -c copy $output
echo ffmpeg -i $1 -ss $2 -to $3 -c copy $4
ffmpeg -i $1 -ss $2 -to $3 -c copy $4
