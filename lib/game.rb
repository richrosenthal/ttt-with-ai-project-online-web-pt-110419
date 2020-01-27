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
    won? || draw?
  end
  
  def won?
    WIN_COMBINATIONS.detect do |winner|
      @board.cells[winner[0]] == @board.cells[winner[1]] &&
      @board.cells[winner[1]] == @board.cells[winner[2]] &&
      (@board.cells[winner[0]] == "X" || @board.cells[winner[0]] == "O")
    end 
  end 
  
  def draw?
    @board.full? && !won?
  end 
    
  # def winner
  #   if winning_combo = won?
  #     @winner = @board.cells[winning_combo.first]
  #   end 
  # end 
  
def winner
  WIN_COMBINATIONS.detect do |win_combo|
    if (@board.cells[win_combo[0]]) == "X" && (@board.cells[win_combo[1]]) == "X" && (@board.cells[win_combo[2]]) == "X"
      return "X"
    elsif (@board.cells[win_combo[0]]) == "O" && (@board.cells[win_combo[1]]) == "O" && (@board.cells[win_combo[2]]) == "O"
      return "O"
    else
      nil
    end
  end
end

  # def turn
  #   puts "It's now #{current_player.token}'s turn."
  #   input = current_player.move(board, timer).to_i
  #   if board.valid_move?(input.to_s)
  #     board.update(input, current_player)
  #     system('clear')
  #     puts "Game #{@counter}" if @wargame
  #     board.display
  #   elsif input.between?(1, 9) == false
  #     puts "That is an invalid move"
  #     turn
  #   else
  #     puts "Whoops! Looks like that position is taken"
  #     turn
  #   end
  # end  

  
# def play
#     turn until over?
#     if won?
#       puts "Congratulations #{winner}!"
#     elsif draw?
#       puts "Cat's Game!"
#     end
#   end
    


 
  
  
  
end 