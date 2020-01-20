class Game
  attr_accessor :board, :player_1, :player_2
  
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end 
  
  WIN_COMBINATIONS = [
    [0,1,2], 
    [3,4,5], 
    [6,7,8], 
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
    
  def current_player
    @board.turn_count % 2 == 0 ? player_1 : player_2
  end
  
  def over?
    
  end
  
  def won?
    
  end 
  
  def draw?
    
  end 
    
#   def winner
#     if winning_combo = won?
#       @winner = @board[winning_combo.first]
#     end 
#   end
    
# def over? 
#     won? || draw?
#   end 
  
#   def draw? 
#     full? && !won?
#   end 
  
#   def won? 
    
#     WIN_COMBINATIONS.detect do |winner|
#       @board[winner[0]] == @board[winner[1]] &&
#       @board[winner[1]] == @board[winner[2]] &&
#       (@board[winner[0]] == "X" || @board[winner[0]] == "O")
#     end 
#   end 
    
#   def full?
#     #thank you stackoverflow 
#     #learned today that you can have an array of boolean values
#     boolean_array = []
#     @board.each do |token|
#         if token == "X" || token == "O"
#         boolean_array << true
#         else
#         boolean_array << false
#         end
#     end
#     boolean_array.all?
#   end 
  
 
  
  
  
end 