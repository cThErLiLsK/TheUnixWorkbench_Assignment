#!/usr/bin/env bash
# File: guessinggame.sh

numFiles=$(ls -l . | egrep -c '^-')

validInput=false

while ! $validInput
do
  echo "Guess the number of files in the current directory:"
  read input
  if [[ "$input" =~ ^[0-9]+$ ]] && [[ $((input-16383)) -le 0 ]]
    then
      if [[ $((input-numFiles)) -eq 0 ]]
        then
          validInput=true
          echo "Correct! The number of files in the current directory is: $numFiles"
        elif [[ $((input-numFiles)) -gt 0 ]]
          then
            echo "Your guess is too high. Guess again."
          else
            echo "Your guess is too low. Guess again."
        fi
    else
      echo "Wrong input. Input positive integers (less then 16383) only."
  fi
done