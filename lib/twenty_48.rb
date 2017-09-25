require_relative 'game'
require_relative 'views/game_view'
require_relative 'views/menu_view'
require 'io/console'

module Twenty48

  COMMANDS = {"w" => :move_up, "s" => :move_down, "a" => :move_left, "d" => :move_right}

  def self.start
    game = Game.new

    until game.over?
      GameView.reset_screen
      MenuView.render_start_menu
      GameView.render(game.board, game.score)
      command = STDIN.getch

      if command == "q"
        MenuView.render_exit_menu
        abort
      else
        unless COMMANDS[command].nil?
          game.move(COMMANDS[command])
        end
      end
    end
  end
end


