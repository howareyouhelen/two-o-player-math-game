class Game

require './player'

attr_accessor :player

puts "-----Game Begins-----"

#start of game
def initialize 
    @player1 = Player.new(gets.chomp)
    @player2 = Player.new(gets.chomp)
    @current_player = @player1
    
end

#question and answer (addition btw 2 random numbers)
def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @question = "What does ${num1} plus ${num2} equal?"
    @answer = num1 + num2
end 

#turn
def turn
    @turn
end

#turn of current player
def current_turn (current_player)
    puts "#{current_player.name}: #{@question}?"
    player_input = gets.chomp
    if player_input === @answer
        puts "#{current_player.name}: YES! You are correct."
    else
        puts "#{current_player.name}: Seriously? No!"
        current_player.decrease_live
    end
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
end

#determine if game is over
def game_over
    if @player1.lives <= 0
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
        puts "----- GAME OVER -----"
    else @player2.lives <= 0
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
        puts "----- GAME OVER -----"
    end
end

#switch turn
def switch_turn
    if @turn == @player1
        @turn = @player2
    else @turn == @player2
        @turn == player1
    end
    puts "----- NEW TURN -----"
end

#game sequence
def gameflow
    question
    current_turn
    switch_turn
end




        


