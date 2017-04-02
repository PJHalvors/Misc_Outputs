#!/bin/bash

echo """
This program can open up your favorite websites as tabs 
in your preferred browser from URLs in a given text file

Designed by Priya J Halvorsen, aka PJHalvors. Enjoy!

Date: April 1, 2017

"""


#Change directory to location of your url text file
cd ~/Desktop
mkdir SearchingTime
cd ~/Desktop/SearchingTime

#name your browser and your text file with list of URLs
#NAME =path/to/application/or file.app
Brave="/Applications/Brave.app"
Safari="/Applications/Safari.app"
Chrome="/Applications/Chrome.app"
MyURL="URLTest.txt"

#Verify that your text file and your browser (or browsers of interest) exist. 
#if ( test -e ~/path/to/file.txt ); then echo "file exists"; fi
for i in {"$MyURL","$Safari","$Brave","$Chrome"}
	do
		if ( test -e "$i"); then echo "$i file exists"
		else echo "$i nonexistent"; fi
	done

#Check your URLs in the text file to confirm they're the ones you want. 
cat "$MyURL"

for i in $(cat "$MyURL")
	do
		open $i "$Safari"
	done