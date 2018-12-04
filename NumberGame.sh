#!/bin/sh

cat NumberGame.sh


echo "Welcome to the number guessing game. With random number generator!"

biggest=1000       # Maximum number possible
guess=0              # Guessed by player
guesses=0           # Number of Guesses made
number=$(( $RANDOM % $biggest )) # Random number, between 1 and $biggest

echo "Guess a number between 1 and $biggest"

while [ "$guess" -ne $number ] ; do
	/bin/echo -n "Guess? " ; read answer
	if [ "$guess" -lt $number ] ; then
		echo "Nope... bigger!"
	elif [ "$guess" -gt $number ] ; then
		echo "Nonononono... smaller!"
	fi
	guesses=$(( $guesses + 1 ))
done
echo "Right!! Guessed $number in $guesses guesses."
exit 0
