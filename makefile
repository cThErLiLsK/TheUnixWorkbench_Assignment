README.md: guessinggame.sh	
	echo "#The UNIX Workbench - Peer Graded Assignment: README.md#" > README.md
	echo ""
	echo "Tis file was **created on**" `date` >> README.md
	echo "**Number of lines** in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	git add -A
	git commit -m "added README.md"
	git push
