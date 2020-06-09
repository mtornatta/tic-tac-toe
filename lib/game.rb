require_relative 'board'

class Game
    attr_accessor :board

    def initialize(board = Board.new)
        @board = board
    end

    def over?
        false
    end
end
