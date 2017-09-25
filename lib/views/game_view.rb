module GameView

  def self.render(board, score)
    puts "***************************************"
    puts "               SCORE: #{score}"
    puts "***************************************"

    board_string = ""
    board.each_slice(4) do |row|
      board_string << "\n"
      board_string << "\t  " + row.join("  |  ")
      board_string << "\n"
    end
    puts board_string
    puts
  end

  def self.reset_screen
    print "\e[2J"
    print "\e[H"
  end
end
