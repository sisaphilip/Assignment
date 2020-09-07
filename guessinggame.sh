files_number=$(find . -maxdepth 1 -type f | wc -w)

function guessingfn {
if [[ $player_input -gt $files_number ]]
then
	echo "Number entered is too high"
	echo "Try again, how many files are in this folder?"
else
	
if [[ $player_input -lt $files_number ]]
then
	echo "Number entered is too low"
	echo "Try again, how many files are in this folder?"

fi
fi
}


echo "How many files are in this folder?"
read player_input
while [[ $player_input -ne $files_number ]]
do
guessingfn $player_input $files_number
read player_input
done
echo "Congradulation your guess is the correct one"
