module GameView

  def self.render(board, score)
    puts "***************************************"
    puts "               SCORE: #{score}"
    puts "***************************************"
    puts
    board.each_slice(4) do |row|
      puts row.join(" ")
    end
  end

  def self.reset_screen
    print "\e[2J"
    print "\e[H"
  end
end
