# The program should have the following behavior:
# 1. When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
# 2. If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
# 3. If the user's guess is correct then they should be congratulated and the program should end.
# 4. The program should not end until the user has entered the correct number of files in the current directory.
# 5. The program should be able to be run by entering bash guessinggame.sh into the console.
# 6. The program should contain at least one function, one loop, and one if statement.
# 7. The program should be more than 20 lines of code but less than 50 lines of code.

function guessing_game {
    echo "How many files are in the current directory?"

    local no_of_files=$(ls | wc -l)

    while true; do
        read guess
        if [[ $guess -eq $no_of_files ]]; then
            echo "Congratulations! You guessed correctly!"
            break
        elif [[ $guess -gt $no_of_files ]]; then
            echo "Your guess was too high. Try again."
        else
            echo "Your guess was too low. Try again."
        fi
    done
}

guessing_game
