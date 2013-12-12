#!/bin/bash

# Jack-Benny Persson
# LX13
# Övning 2, labb 4

# Define some variables
Rate="6.3"

# Run it
printf "Do you want to convert from SEK or USD? "
read Exchange

if [ "$Exchange" != "USD" ] && [ $Exchange != "SEK" ]; then
	echo "Enter USD or SEK"
	exit 2
fi

printf "Enter amount: "
read Amount

case "$Exchange" in
	USD)
	  Answer=`echo "scale=2;$Amount*$Rate" | bc`
	  printf "$Amount USD is $Answer SEK\n"
	;;

	SEK)
	  Answer=`echo "scale=2;$Amount/$Rate" | bc`
	  printf "$Amount SEK is $Answer USD\n"
	;;
esac
