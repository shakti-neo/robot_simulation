require_relative "toy.rb"

class CommandParser
  def initialize
    @valid_state = false
  end

  def convert_command(command)
    unless command !~ /(PLACE)\s[0-9][,][0-9],[A-Z]+/
      @valid_state = true
      x_coordinate, y_coordinate = command.scan(/[0-9]+/).collect{|command| command.to_i}
      direction = command.scan(/[A-Z]+\z/).first
      @toy = Toy.new(x_coordinate, y_coordinate, direction)
    else
      if @valid_state == true
        case command
          when "MOVE"
            @toy.move
          when "LEFT"
            @toy.left
          when "RIGHT"
            @toy.right
          when "REPORT"
            @toy.report
            puts "Output: #{@toy.x_coordinate},#{@toy.y_coordinate},#{@toy.direction}"
        end
      end
    end
  end
end