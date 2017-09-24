class Game

  attr_reader :board, :score
  BOARD_SIZE = 16
  BOARD_BLANK = 0
  NEW_NUMBER_SAMPLE = [2, 2, 2, 2, 4]

  def initialize
    @board = generate_board
    @score = 0
  end

  def over?
  end

  def move(direction)
  end

  private

  def generate_board
    # board = Array.new(BOARD_SIZE) { BOARD_BLANK }
    # first_random_position = get_random_index
    # second_random_position = get_random_index
    # board[first_random_position] = NEW_NUMBER_SAMPLE.sample
    # board[second_random_position] = NEW_NUMBER_SAMPLE.sample
    # board
    board = [1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234, 1234]
  end

  def get_random_index
    rand(0..BOARD_SIZE)
  end

end
