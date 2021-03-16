create_readme_file:
	touch README.md
	echo "# The guessing game"> README.md
	echo "" >> README.md
	echo "The make command was run on:" >>README.md
	date '+%A %W %Y %X' >> README.md
	echo "">>README.md
	echo "The file guessinggame.sh contains the following number of lines:">>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
