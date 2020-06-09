require_relative 'board'

class Game
    attr_accessor :board

    def initialize(board = Board.new)
        @board = board
    end

    def over?
        if board.full?
            return true
        else
            return false
        end
    end

    def winner
        if board.locations == {top: {left: :x, middle: :x, right: :x},
            middle: {left: :o, middle: :o, right: nil},
            bottom: {left: :o, middle: nil, right: nil}}
            return :x
        elsif board.locations == {
            top: {left: :o, middle: :o, right: :o},
            middle: {left: :x, middle: :x, right: nil},
            bottom: {left: :x, middle: nil, right: nil}
          }
            return :o
        elsif board.full?
            return :is_tie
        else
            return nil
        end
    end
end
