# This makefile should produce the README.md which should contain the following information:
# 1. The title of the project.
# 2. The date and time at which make was run.
# 3. The number of lines of code contained in guessinggame.sh

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "## Date and Time" >> README.md
	@date >> README.md
	@echo "## Number of lines in **guessinggame.sh**" >> README.md
	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	@echo "make: 'README.md' has been updated"
	
clean:
	@rm README.md 2> /dev/null || true