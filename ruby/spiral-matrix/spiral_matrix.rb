DIRECTIONS = [[0, 1], [1, 0], [0, -1], [-1, 0]].freeze

class SpiralMatrix
  attr_accessor :matrix

  def initialize(size)
    @matrix = generate_matrix(size)
  end

  private

  def generate_matrix(size)
    result = Array.new(size) { Array.new(size) }

    row = 0
    column = 0
    direction = 0

    (1..size * size).each do |number|
      result[row][column] = number
      next if number == size * size

      next_row = row + DIRECTIONS[direction][0]
      next_column = column + DIRECTIONS[direction][1]

      should_rotate =
        next_row < 0 || next_row >= size ||
        next_column < 0 || next_column >= size ||
        !result[next_row][next_column].nil?

      if should_rotate
        direction = (direction + 1) % DIRECTIONS.length
        next_row = row + DIRECTIONS[direction][0]
        next_column = column + DIRECTIONS[direction][1]
      end

      row = next_row
      column = next_column
    end

    result
  end
end
