#!/usr/bin/env bash
# File: guessinggame.sh 


echo "Start Program"

echo "Welcome to the Guessing Game!" 

##

function hello {
	echo "What is your name?: "

read name

echo "Hello: $name "
}

hello

##

echo "Ok! Now lets get started. The goal of the game is to guess how many files are in this game's directory. 
-Enter your guess when prompted

-Continue to guess until you get the correct answer

-Good Luck! The game begins now : )" 
##


file_num=$(ls -l | grep -v ^d | wc -l)




echo "How many files are in the directory?: " 

read guess

echo "You answered: $guess" 

##

until [[ $guess -eq $file_num ]]
do

if [[ $guess -gt $file_num ]] 

then
	echo "Sorry, your guess is too HIGH. Try again" 
	echo "How many files are in the directory?: " 
	read guess

else	
	echo "Sorry, your guess is too LOW. Try again" 
	echo "How many files are in the directory?: " 
	read guess
fi
done 

##

echo "You got it, Congratulations! Game developed by TS." 
echo "End Program"

