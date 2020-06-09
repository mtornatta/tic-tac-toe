require_relative 'board'

class Game

    attr_accessor :board

    def initialize(board)
        @board = board
    end

    def over?
        false
    end
end
