module Players
  class Human < Player
    
    def move
      puts "Please enter your selection"
      gets.strip
    end 
    
  end 
end 