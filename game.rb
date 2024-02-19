# Welcome prompt for user
puts "Welcome to the Adventure Game!"
puts "You have 0 points."

# Init variables
input = "0"
score = 0

# Start the loop with the exit condition
until input == "exit"

    # Prompt
    puts "Choose a room (1-3) to enter or 'exit' to end the game: "

    # Take in user input and remove the \n char
    input = gets
    input = input.chomp

    # Because there are so little rooms I just used if statements, if room count was larger a hash could be used
    # If input == room number, show needed prompt and score
    if input == "1"
        score = score + 5
        puts "You entered Room 1 and earned 5 points."
    elsif input == "2"
        score = score + 10
        puts "You entered Room 2 and earned 10 points."
    elsif input == "3"
        score = score + 15
        puts "You entered Room 3 and earned 15 points."
    end
end

# Ending prompt
puts "Game over! You collected a total of #{score} points."