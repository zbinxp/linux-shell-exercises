#! /bin/bash

# Good morning, it's Thursday 08 June 2017 - 10:44:00 AM
hour=$(date +"%H")

if [ $hour -ge 5 ] && [ $hour -lt 12 ]; then
    what="morning"
elif [ $hour -ge 12 ] && [ $hour -lt 1 ]; then
    what="noon"
elif [ $hour -ge 1 ] && [ $hour -lt 6 ]; then
    what="after"
elif [ $hour -ge 6 ] && [ $hour -lt 10 ]; then
    what="evening"
else    
    what="night"
fi    
str=$(date +"it's %A %d %B %Y - %I:%M:%S %p")
echo "Good $what,$str"