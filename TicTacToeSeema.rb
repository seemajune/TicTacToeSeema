#===== Forecast/ Initial Planning 4/20/2014 ======

#Step 1: Puts an introduction/greeting to gets humanName
 # Print instructions: allow the user to select either "x" or "o" for game play.
 # Gets the user selection humanPlayer
 # should maintain that, if humanPlayer (X or O) == anything other than X or O, print to the console "please make a valid selection"
 # For each turn, ask the user to enter to the console the corresponding grid number for where they'd like to place their move.
 # (puts "Enter the number in the grid where you'd like to place your next move.")
 # must define and correlate gets.chomp number to a place in the array, must print the array with humanPlayer and computerPlayer symbols after each turn.
 # on every turn, should maintain that user must select an unoccupied placeholder- if user selects an occupied space, print "please make a valid selection"

#Step 3: Print to the console a 3x3 numbered grid that correlates to/returns values to an array.
 # must maintain the user only makes valid numeric selection. If not, prints "please enter a valid number..."

#Step 4: define a method that automatically selects computerPlayer as "x" or "o" based on humanPlayer. (If humanPlayer == x)
  # randomization? on first turn, computerPlayer may be placed at a random point in the grid to allow for a user-friendly experience,
  # unless placeholder is occupied by humanPlayer, computerPlayer may be placed anywhere in grid.

#Step 5: at the beginning of each turn, the array, with occupied and/or occupied slots (X's, O's and numeric placeholders)should be printed to the console.

#Step 6: define a method that (or within the above method) that places both user input by turn, and computer input
  # by turn in a 3x3 grid (array), and returns each input/output value to the array. The method could include random placement of the
  # computer's first move based on user's first move? *Must maintain that the computer output cannot override human input, (i.e. if computer is X and human is O,
  # no one placemark on the grid may be occupied by both X and O)
  # Method must maintain that, for any two lines occupied by humanPlayer in a row (verticle, horizontal or diagonal), 
  # computerPlayer should occupy the third-in-a-row grid placeholder, therefor forbidding humanPlayer to win the game too easily.

#Step 7: Create a method, that, after 3rd (or 4th?) round of user input (user's 3rd & 4th turn) checks for winner- for every 3 x's or every 3 o's in a row, 
  # must print to the console to alert the user that the game is over, and announce winner, if there is a winner, or "Cat's game" if no winner.
  # ^ For example, if all three [0][1][2] in the array are occupied by humanplayer_symbol, print WinnerAnnouncement to the console
  # ^ "Good job! you won!" Else, print, "Sorry, #{humanName} ,the computer beat you. Please type play in the console to try and beat the computer again! Or press shift + Q to quit"

#===== Method to generate computer's symbol as dependent on user input =====

def xoGenerator(humanPlayer)
  if humanPlayer.upcase == "O" 
     computerPlayer = "X" 
    elsif humanPlayer.upcase == "X" 
          computerPlayer = "O"               
  end
end

#===== Method for fixing first possible invalid selection =====

def invalidSelection(humanPlayer)
  until humanPlayer.upcase == "O" || humanPlayer.upcase == "X"
    puts "please enter a valid selection."
    humanPlayer = gets.chomp
  end
    return humanPlayer  
end

#===== Method to generate placement of computer's first turn based on user's first grid (array) selection =====

def slotGenerator(tictac_array, f, humanPlayer, computerPlayer)
  while tictac_array[f] == "#{computerPlayer}" || tictac_array[f] == "#{humanPlayer}"
    puts "Please enter a valid selection"
    n = gets.chomp
    f = n.to_i
  end 
 
  tictac_array[f] = "#{humanPlayer}"
    if f == 0 && tictac_array[1] != "#{humanPlayer}" 
       tictac_array[1] = "#{computerPlayer}" 
    elsif f == 1 && tictac_array[0] != "#{humanPlayer}" 
      tictac_array[0] = "#{computerPlayer}"
    elsif f == 2 && tictac_array[3] != "#{humanPlayer}" 
      tictac_array[3] = "#{computerPlayer}"
    elsif  f == 3 && tictac_array[2] != "#{humanPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
    elsif  f == 4 && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"
    elsif  f == 5 && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"
    elsif  f == 6 && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"
    elsif f == 7 && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"
    end
  
    tictac_array
end

#===== Method to generate placement of computer's second turn based on user's second grid (array) selection =====

def slotGenerator2(tictac_array, g, humanPlayer, computerPlayer)
  while tictac_array[g] == "#{computerPlayer}" || tictac_array[g] == "#{humanPlayer}" 
    puts "Please enter a valid selection"
    p = gets.chomp
    g = p.to_i
  end
  
  tictac_array[g] = "#{humanPlayer}"
     
    if g == 0 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}" 

      elsif g == 0 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
      elsif g == 0 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
      tictac_array[3] = "#{computerPlayer}"
      elsif  g == 0 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
      tictac_array[4] = "#{computerPlayer}"
      elsif  g == 0 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
      tictac_array[5] = "#{computerPlayer}"
      elsif  g == 0 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
      tictac_array[6] = "#{computerPlayer}"
      elsif g == 0 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
      tictac_array[7] = "#{computerPlayer}"
      elsif g == 0 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
      tictac_array[8] = "#{computerPlayer}"
      elsif g == 1 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
      elsif g == 1 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"    
      elsif g == 1 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
      tictac_array[3] = "#{computerPlayer}"
      elsif  g == 1 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
      tictac_array[4] = "#{computerPlayer}"
      elsif  g == 1 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
      tictac_array[5] = "#{computerPlayer}"
      elsif  g == 1 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
      tictac_array[6] = "#{computerPlayer}"
      elsif g == 1 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
      tictac_array[7] = "#{computerPlayer}"
      elsif g == 1 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
      tictac_array[8] = "#{computerPlayer}"
      elsif g == 2 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
      elsif g == 2 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}"
      elsif g == 2 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
      tictac_array[3] = "#{computerPlayer}"
      elsif  g == 2 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
      tictac_array[4] = "#{computerPlayer}"
      elsif  g == 2 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
      tictac_array[5] = "#{computerPlayer}"
      elsif  g == 2 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
      tictac_array[6] = "#{computerPlayer}"
      elsif g == 2 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
      tictac_array[7] = "#{computerPlayer}"
      elsif g == 2 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
      tictac_array[8] = "#{computerPlayer}"
      elsif g == 3 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
      elsif g == 3 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}"
      elsif g == 3 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
      elsif  g == 3 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
      tictac_array[4] = "#{computerPlayer}"
      elsif  g == 3 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
      tictac_array[5] = "#{computerPlayer}"
      elsif  g == 3 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
      tictac_array[6] = "#{computerPlayer}"
      elsif g == 3 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
      tictac_array[7] = "#{computerPlayer}"
      elsif g == 3 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
      tictac_array[8] = "#{computerPlayer}"
     elsif g == 4 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
     elsif g == 4 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}"
     elsif g == 4 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
     elsif  g == 4 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
     tictac_array[3] = "#{computerPlayer}"
     elsif  g == 4 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
     tictac_array[5] = "#{computerPlayer}"
    elsif  g == 4 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
     tictac_array[6] = "#{computerPlayer}"    
    elsif g == 4 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
     tictac_array[7] = "#{computerPlayer}"   
    elsif g == 4 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 
     elsif g == 5 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
     elsif g == 5 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}"  
     elsif g == 5 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
     elsif  g == 5 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
     tictac_array[3] = "#{computerPlayer}"
     elsif  g == 5 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
     tictac_array[4] = "#{computerPlayer}"
    elsif  g == 5 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
     tictac_array[6] = "#{computerPlayer}"  
    elsif g == 5 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
     tictac_array[7] = "#{computerPlayer}" 
    elsif g == 5 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 
    elsif g == 6 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
     elsif g == 6 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}"     
     elsif g == 6 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
     elsif  g == 6 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
     tictac_array[3] = "#{computerPlayer}"
     elsif  g == 6 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
     tictac_array[4] = "#{computerPlayer}"
     elsif  g == 6 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
     tictac_array[5] = "#{computerPlayer}" 
     elsif g == 6 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
     tictac_array[7] = "#{computerPlayer}" 
     elsif g == 6 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 
     elsif g == 7 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
     tictac_array[0] = "#{computerPlayer}" 
     elsif g == 7 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
     tictac_array[1] = "#{computerPlayer}"
     elsif g == 7 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
     tictac_array[2] = "#{computerPlayer}"
     elsif  g == 7 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
     tictac_array[3] = "#{computerPlayer}"
     elsif  g == 7 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
     tictac_array[4] = "#{computerPlayer}"
     elsif  g == 7 && tictac_array[5] != "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" 
     tictac_array[5] = "#{computerPlayer}"   
     elsif g == 7 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
     tictac_array[6] = "#{computerPlayer}"
     elsif g == 7 && tictac_array[8] != "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 
     elsif g == 8 && tictac_array[0] != "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" 
      tictac_array[0] = "#{computerPlayer}" 
     elsif g == 8 && tictac_array[1] != "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" 
      tictac_array[1] = "#{computerPlayer}" 
     elsif g == 8 && tictac_array[2] != "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" 
      tictac_array[2] = "#{computerPlayer}"
     elsif  g == 8 && tictac_array[3] != "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" 
     tictac_array[3] = "#{computerPlayer}"
     elsif  g == 8 && tictac_array[4] != "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" 
     tictac_array[4] = "#{computerPlayer}"
     elsif  g == 8 && tictac_array[6] != "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" 
     tictac_array[6] = "#{computerPlayer}" 
     elsif g == 8 && tictac_array[7] != "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

   end

   tictac_array
   
end

#=======slotGenerator3 BEGINS HERE ============

def slotGenerator3(tictac_array, h, humanPlayer, computerPlayer)
 
    while tictac_array[h] == "#{computerPlayer}" || tictac_array[h] == "#{humanPlayer}" 
      puts "Please enter a valid selection"
       m = gets.chomp
       h = m.to_i
    end
  
  tictac_array[h] = "#{humanPlayer}" #MOVE TO BLOCK HUMANPLAYER IN ROUND 3
     
  if h == 0 && tictac_array[4] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 

   elsif h == 0 && tictac_array[8] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif h == 0 && tictac_array[1] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}" 

    elsif h == 0 && tictac_array[2] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}" 
  
    elsif h == 0 && tictac_array[6] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}" 

    elsif h == 0 && tictac_array[3] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}" 

    elsif h == 1 && tictac_array[4] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}" 

     elsif h == 1 && tictac_array[7] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif h == 1 && tictac_array[2] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}" 

    elsif h == 1 && tictac_array[0] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}" 

    elsif h == 2 && tictac_array[4] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}" 

    elsif h == 2 && tictac_array[6] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif h == 2 && tictac_array[0] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif h == 2 && tictac_array[1] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}" 

    elsif h == 2 && tictac_array[5] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 

    elsif h == 2 && tictac_array[8] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif h == 3 && tictac_array[0] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif h == 3 && tictac_array[6] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif h == 3 && tictac_array[4] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif h == 3 && tictac_array[5] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[5] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[3] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[1] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[7] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[0] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"
    
    elsif h == 4 && tictac_array[8] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[2] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[6] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif h == 4 && tictac_array[3] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"
   
    elsif h == 4 && tictac_array[5] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif h == 5 && tictac_array[2] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif h == 5 && tictac_array[8] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif h == 5 && tictac_array[3] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif h == 5 && tictac_array[4] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[0] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[3] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[2] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[4] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[7] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif h == 6 && tictac_array[8] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif h == 7 && tictac_array[6] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif h == 7 && tictac_array[8] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif h == 7 && tictac_array[1] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif h == 7 && tictac_array[4] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[2] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[5] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[4] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[0] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[6] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif h == 8 && tictac_array[7] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

  end
 
   tictac_array

end

#=======slotGenerator4 BEGINS HERE ============

def slotGenerator4(tictac_array, j, humanPlayer, computerPlayer)
 
    while tictac_array[j] == "#{computerPlayer}" || tictac_array[j] == "#{humanPlayer}" 
      puts "Please enter a valid selection"
       r = gets.chomp
       j = r.to_i
    end
  
tictac_array[j] = "#{humanPlayer}" #MOVE TO BLOCK HUMANPLAYER IN ROUND 3
     
  if j == 0 && tictac_array[4] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 

   elsif j == 0 && tictac_array[8] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif j == 0 && tictac_array[1] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}" 

    elsif j == 0 && tictac_array[2] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}" 
  
    elsif j == 0 && tictac_array[6] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}" 

    elsif j == 0 && tictac_array[3] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}" 

    elsif j == 1 && tictac_array[4] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}" 

     elsif j == 1 && tictac_array[7] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif j == 1 && tictac_array[2] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}" 

    elsif j == 1 && tictac_array[0] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}" 

    elsif j == 2 && tictac_array[4] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}" 

    elsif j == 2 && tictac_array[6] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}" 

    elsif j == 2 && tictac_array[0] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif j == 2 && tictac_array[1] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}" 

    elsif j == 2 && tictac_array[5] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}" 

    elsif j == 2 && tictac_array[8] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif j == 3 && tictac_array[0] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif j == 3 && tictac_array[6] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif j == 3 && tictac_array[4] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif j == 3 && tictac_array[5] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[5] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[3] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[1] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[7] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[0] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"
    
    elsif j == 4 && tictac_array[8] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[2] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[6] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif j == 4 && tictac_array[3] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"
   
    elsif j == 4 && tictac_array[5] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif j == 5 && tictac_array[2] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif j == 5 && tictac_array[8] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif j == 5 && tictac_array[3] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif j == 5 && tictac_array[4] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[0] == "#{humanPlayer}" && tictac_array[3] != "#{computerPlayer}" && tictac_array[3] != "#{humanPlayer}" 
     tictac_array[3] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[3] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[2] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[4] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[7] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif j == 6 && tictac_array[8] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif j == 7 && tictac_array[6] == "#{humanPlayer}" && tictac_array[8] != "#{computerPlayer}" && tictac_array[8] != "#{humanPlayer}" 
     tictac_array[8] = "#{computerPlayer}"

    elsif j == 7 && tictac_array[8] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

    elsif j == 7 && tictac_array[1] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif j == 7 && tictac_array[4] == "#{humanPlayer}" && tictac_array[1] != "#{computerPlayer}" && tictac_array[1] != "#{humanPlayer}" 
     tictac_array[1] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[2] == "#{humanPlayer}" && tictac_array[5] != "#{computerPlayer}" && tictac_array[5] != "#{humanPlayer}" 
     tictac_array[5] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[5] == "#{humanPlayer}" && tictac_array[2] != "#{computerPlayer}" && tictac_array[2] != "#{humanPlayer}" 
     tictac_array[2] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[4] == "#{humanPlayer}" && tictac_array[0] != "#{computerPlayer}" && tictac_array[0] != "#{humanPlayer}" 
     tictac_array[0] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[0] == "#{humanPlayer}" && tictac_array[4] != "#{computerPlayer}" && tictac_array[4] != "#{humanPlayer}" 
     tictac_array[4] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[6] == "#{humanPlayer}" && tictac_array[7] != "#{computerPlayer}" && tictac_array[7] != "#{humanPlayer}" 
     tictac_array[7] = "#{computerPlayer}"

    elsif j == 8 && tictac_array[7] == "#{humanPlayer}" && tictac_array[6] != "#{computerPlayer}" && tictac_array[6] != "#{humanPlayer}" 
     tictac_array[6] = "#{computerPlayer}"

  end
 
   tictac_array

end

#=====Invalid Slot Checkers start here =====

def invalid_Slot_Selection(n)
  n = gets.chomp
  f = n.to_i 
  
   until f <= 8 
     puts "please enter a valid selection."
     n = gets.chomp
     f = n.to_i 
  end
    return f   
end    

def invalid_Slot_Selection(p)
  p = gets.chomp
  g = p.to_i 
  
   until g <= 8 
     puts "please enter a valid selection."
     p = gets.chomp
     g = p.to_i 
  end
    return g 
end   

def invalid_Slot_Selection(m)
  m = gets.chomp
  h = m.to_i 
  
   until h <= 8 
    puts "please enter a valid selection."
    m = gets.chomp
    h = m.to_i 
  end
    return h  
end   

def invalid_Slot_Selection(r)
  r = gets.chomp
  j = r.to_i 
  
   until j <= 8 
    puts "please enter a valid selection."
    r = gets.chomp
    j = r.to_i 
  end
    return j  
end   

#==== Exit Game =====

def exit_game(humanName)
  puts "Thank you for playing, #{humanName.capitalize}!"
    exit
end


#=====Winner Checker: first check====

def winnerChecker1(tictac_array, humanPlayer, computerPlayer)
  
   if tictac_array[0] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[0] == "#{humanPlayer}" && tictac_array[1] == "#{humanPlayer}" && tictac_array[2] == "#{humanPlayer}" 
      puts "#{humanPlayer} wins! Congratulations!"
      exit
  
    elsif tictac_array[0] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" && tictac_array[3] == "#{humanPlayer}" 
      puts "#{humanPlayer} wins! Congratulations!"
      exit

    elsif tictac_array[1] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[7] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
     
    elsif tictac_array[2] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
  
    elsif tictac_array[2] == "#{humanPlayer}" && tictac_array[5] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
       puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[3] == "#{humanPlayer}" && tictac_array[0] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[3] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[5] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[6] == "#{humanPlayer}" && tictac_array[7] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
    
     elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[1] == "#{computerPlayer}" && tictac_array[2] == "#{computerPlayer}" 
      puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
  
    elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" && tictac_array[3] == "#{computerPlayer}" 
      puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[1] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[7] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
     
    elsif tictac_array[2] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
  
    elsif tictac_array[2] == "#{computerPlayer}" && tictac_array[5] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
      puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[3] == "#{computerPlayer}" && tictac_array[0] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[3] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[5] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[6] == "#{computerPlayer}" && tictac_array[7] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
    
   end

end

#=====Winner Checker: second check====

def winnerChecker2(tictac_array, humanPlayer, computerPlayer)
  
   if tictac_array[0] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[0] == "#{humanPlayer}" && tictac_array[1] == "#{humanPlayer}" && tictac_array[2] == "#{humanPlayer}" 
      puts "#{humanPlayer} wins! Congratulations!"
      exit
  
    elsif tictac_array[0] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" && tictac_array[3] == "#{humanPlayer}" 
      puts "#{humanPlayer} wins! Congratulations!"
      exit

    elsif tictac_array[1] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[7] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
     
    elsif tictac_array[2] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
  
    elsif tictac_array[2] == "#{humanPlayer}" && tictac_array[5] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
       puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[3] == "#{humanPlayer}" && tictac_array[0] == "#{humanPlayer}" && tictac_array[6] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[3] == "#{humanPlayer}" && tictac_array[4] == "#{humanPlayer}" && tictac_array[5] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit

    elsif tictac_array[6] == "#{humanPlayer}" && tictac_array[7] == "#{humanPlayer}" && tictac_array[8] == "#{humanPlayer}" 
     puts "#{humanPlayer} wins! Congratulations!"
     exit
    
     elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
     exit

    elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[1] == "#{computerPlayer}" && tictac_array[2] == "#{computerPlayer}" 
      puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
  
    elsif tictac_array[0] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" && tictac_array[3] == "#{computerPlayer}" 
      puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[1] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[7] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
     
    elsif tictac_array[2] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
  
    elsif tictac_array[2] == "#{computerPlayer}" && tictac_array[5] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[3] == "#{computerPlayer}" && tictac_array[0] == "#{computerPlayer}" && tictac_array[6] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[3] == "#{computerPlayer}" && tictac_array[4] == "#{computerPlayer}" && tictac_array[5] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit

    elsif tictac_array[6] == "#{computerPlayer}" && tictac_array[7] == "#{computerPlayer}" && tictac_array[8] == "#{computerPlayer}" 
     puts "#{computerPlayer} wins! Congratulations!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
    
    else
      puts "Cat's Game! Neither #{computerPlayer} nor #{humanPlayer} win this time! Sorry!"
       puts "#{tictac_array[0..2]}"
       puts "#{tictac_array[3..5]}"
       puts "#{tictac_array[6..8]}" 
      exit
   end

end

#==================Game starts here ==================#

puts "Hello! What's your name?"
humanName = gets.chomp


puts "Hiya, #{humanName.capitalize!}, Let's play Tic-Tac-Toe!\n
      Would you like to be X or O?\n
      Enter your selection by typing 'x' or 'o' in the console.\n
      (Press shift + hold Q to quit at any time.)"

  humanPlayer = gets.chomp!

   if humanPlayer == "Q"
   exit_game(humanName)

    elsif humanPlayer.upcase == "O" 
    computerPlayer = xoGenerator(humanPlayer)
       puts "You are O. I am X.\n"

    elsif humanPlayer.upcase == "X" 
    computerPlayer = xoGenerator(humanPlayer)
      puts "You are X. I am O.\n"

    else
     humanPlayer = invalidSelection(humanPlayer) 
     computerPlayer = xoGenerator(humanPlayer)        
end


tictac_array = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
puts "#{tictac_array[0..2]}"
puts "#{tictac_array[3..5]}"
puts "#{tictac_array[6..8]}" 
puts "Please select the number of the slot in the above grid that corresponds to where you'd like to place your move."
n = gets.chomp
f = n.to_i
  
  if n == "Q"
   exit_game(humanName)

   elsif f <= 8  
   tictac_array = slotGenerator(tictac_array, f, humanPlayer, computerPlayer)
    
   else
    n = invalid_Slot_Selection(n)
    tictac_array = slotGenerator(f, humanPlayer, computerPlayer)
  end


puts "#{tictac_array[0..2]}"
puts "#{tictac_array[3..5]}"
puts "#{tictac_array[6..8]}" 

puts "please enter the corresponding number for where you'd like to place your next move"
    p = gets.chomp
    g = p.to_i
 
     if p == "Q"
     exit_game(humanName)

      elsif g <= 8  
      tictac_array = slotGenerator2(tictac_array, g, humanPlayer, computerPlayer)
   
      else
      p = invalid_Slot_Selection(p)
      tictac_array = slotGenerator2(tictac_array, g, humanPlayer, computerPlayer)
  end

puts "#{tictac_array[0..2]}"
puts "#{tictac_array[3..5]}"
puts "#{tictac_array[6..8]}" 

puts "please enter the corresponding number for where you'd like to place your next move"
    m = gets.chomp
    h = m.to_i
 
    if m == "Q"
     exit_game(humanName)

     elsif h <= 8  
     tictac_array = slotGenerator3(tictac_array, h, humanPlayer, computerPlayer)
       winnerChecker1(tictac_array, humanPlayer, computerPlayer)

     else
     m = invalid_Slot_Selection(m)
     tictac_array = slotGenerator3(tictac_array, h, humanPlayer, computerPlayer)
    end

puts "#{tictac_array[0..2]}"
puts "#{tictac_array[3..5]}"
puts "#{tictac_array[6..8]}" 

puts "please enter the corresponding number for where you'd like to place your next move"
    r = gets.chomp
    j = r.to_i
 
    if r == "Q"
     exit_game(humanName)

     elsif j <= 8  
     tictac_array = slotGenerator3(tictac_array, j, humanPlayer, computerPlayer)
       winnerChecker2(tictac_array, humanPlayer, computerPlayer)

     else
     r = invalid_Slot_Selection(r)
     tictac_array = slotGenerator4(tictac_array, j, humanPlayer, computerPlayer)
       winnerChecker2(tictac_array, humanPlayer, computerPlayer)
    
    end





  


