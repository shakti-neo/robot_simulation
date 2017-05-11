require_relative "table.rb"

class Toy
  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction.downcase
  end

  def move
    case @direction
      when "north"
        (@y_coordinate < 5) ? ( @y_coordinate += 1 ) : @y_coordinate
      when "south"
        (@y_coordinate > 0) ? ( @y_coordinate -= 1 ) : @y_coordinate
      when "east"
        (@x_coordinate < 5) ? ( @x_coordinate += 1 ) : @x_coordinate
      when "west"
        (@x_coordinate > 0) ? ( @x_coordinate -= 1 ) : @x_coordinate
    end
  end

  def left
    case @direction
      when "north"
        @direction = "west"
      when "south"
        @direction = "east"
      when "east"
        @direction = "north"
      when "west"
        @direction = "south"
    end
  end

  def right
    case @direction
      when "north"
        @direction = "east"
      when "south"
        @direction = "west"
      when "east"
        @direction = "south"
      when "west"
        @direction = "north"
    end
  end

  def report
    return @x_coordinate, @y_coordinate, @direction
  end

end