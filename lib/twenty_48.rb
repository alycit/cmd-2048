require_relative 'game'
require_relative 'views/game_view'
require_relative 'views/menu_view'
require 'io/console'

module Twenty48
  def self.start

    MenuView.render_start_menu
    game = Game.new

    until game.over?

      GameView.render(game.board, game.score)
      command = STDIN.getch

      if command == "x"
        MenuView.render_exit_menu
        abort
      else
        game.move(command)
        GameView.reset_screen
      end
    end
  end
end


