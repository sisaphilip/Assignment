README.md: guessinggame.sh
	echo "# THE GUESSING GAME" > README.md
	date >> README.md
	echo "<li>    </li>" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
        
