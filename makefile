Readme:guessinggame.sh
	echo \## File Information  > README.md
	echo -n - \*\*README creation\*\* :  >> README.md
	date +%D" "%H:%M >> README.md
	echo -n - \*\*Number of lines in guessinggame.sh\*\* :  >> README.md
	wc -l < guessinggame.sh >> README.md
