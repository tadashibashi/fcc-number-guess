#!/bin/bash
# Number guessing game
#
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GAME() {
	NUMBER=$((RANDOM % 1000 + 1))
	GUESSES=0

	# get user data
	echo -e "\nEnter your username:"
	read USERNAME

	# check database for username
	USER=$($PSQL "SELECT games_played, best_game FROM users WHERE username='$USERNAME'")

	if [[ -z $USER ]]
	then 
		# add new user to db
		echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
		INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
	else  
		# greet existing user
		echo $USER | while IFS="|" read GAMES_PLAYED BEST_GAME 
		do
			echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
		done
	fi

	# start game loop
	echo -e "\nGuess the secret number between 1 and 1000:"
	while true
	do
		read GUESS
		if [[ ! $GUESS =~ ^[0-9]+$ ]]   # invalid number
		then
			echo -e "\nThat is not an integer, guess again:"
		else
			GUESSES=$(($GUESSES + 1))

			if [[ $GUESS -eq $NUMBER ]]
			then
				break
			elif [[ $GUESS -gt $NUMBER ]] # guess is too high
			then
				echo -e "\nIt's lower than that, guess again:"
			else                          # guess is too low
				echo -e "\nIt's higher than that, guess again:"
			fi
		fi
	done

	# process results
	# if GUESSES < highscore in database or database highscore is 0 (default)
	BESTGAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
	if [[ $GUESSES -lt $BESTGAME ]] || [[ $BESTGAME -eq 0 ]]
	then
		# update highscore
		UPDATE_BESTGAME_RESULT=$($PSQL "UPDATE users SET best_game=$GUESSES WHERE username='$USERNAME'")
	fi

	# increment times played
	UPDATE_TIMES_PLAYED_RESULT=$($PSQL "UPDATE users SET games_played=(games_played + 1) WHERE username='$USERNAME'")
	
	echo -e "\nYou guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
}

GAME
