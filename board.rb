require_relative 'bomb.rb'
require 'byebug'
class Board

  MAX_BOMBS = 10

  attr_accessor :B, :F, :N

  def self.generate
    Array.new(9){ Array.new(9){0} }
  end

  def initialize(grid = Board.generate)
    @grid = grid
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, obj)
    row, col = pos
    @grid[row][col] = obj
  end

  def rand_pos
    [rand(1..@grid.length - 2), rand(1..@grid.length - 2)]
  end

  def populate
    bombs_placed = 0
    until bombs_placed == MAX_BOMBS
      pos = rand_pos
      if self[pos].is_a?(Bomb) == false
        place_bomb(pos)
        bombs_placed += 1
      end
    end
  end

  def place_bomb(pos)
    sweeper(pos)
    self[pos] = Bomb.new

  end

  def sweeper(pos)
    x,y = pos
    positions_to_sweep = []
    ((x-1)..(x+1)).each do |row|
      ((y-1)..(y+1)).each do |col|
        self[[row,col]] += 1 unless self[[row,col]].is_a?(Bomb)
      end
    end
  end

  def render
    puts "  #{(0..8).to_a.join(" ")}"
    @grid.each_with_index do |row,idx|
      print "#{idx}"
      row.each_with_index do |square|
        print (square.is_a?(Bomb)) ? " #{square.display_value}" : " #{square}"
      end
      print"\n"
    end
  end



end

# load 'board.rb'
b = Board.new
b.populate
b.render
