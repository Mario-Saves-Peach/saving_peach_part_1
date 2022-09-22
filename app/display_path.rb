class GameRunner
    def initialize
        @grid_builder = GridBuilder.new
        @move_finder = MoveFinder.new
    end

    def run
        @grid_builder.build
        puts @move_finder.displayPathtoPrincess(@grid_builder.get_grid_size, @grid_builder.get_grid_data)
    end
end

class GridBuilder
    attr_reader :number, :grid
    
    def initialize
        @number = 0
        @grid = Array.new
    end

    def build
        @number = gets.to_i

        @grid = Array.new(@number)
    
        (0...@number).each do |i|
            @grid[i] = gets.strip
        end
    
        @grid = @grid.join
    end

    def get_grid_size
        @number
    end

    def get_grid_data
        @grid
    end
end

class MoveFinder
    def middle(array)
        mid = (array.size - 1) / 2
        return array[mid]
    end
    
    def corner_position(n, array)
        if array[0] == 'p'
            return 'UP LEFT'
        elsif array[n - 1] == 'p'
            return 'UP RIGHT'
        elsif array.reverse[n - 1] == 'p'
            return 'DOWN LEFT'
        elsif array[-1] == 'p'
            return 'DOWN RIGHT'
        else
            return 'Error'
        end
    end
    
    def error_handling(n, grid_array)
        number_confirmation = (n.odd? && 3 <= n && n < 100)
    
        grid_confirmation = (n * n) == grid_array.size
    
        if number_confirmation == false
            return 'Error: Input Needs to be an Odd Number Between 3 - 99'
        elsif number_confirmation && grid_confirmation == false
            return "Grid Doesn't Match n x n Format"
        elsif middle(grid_array) != 'm'
            return 'Error: Mario is not centered on your grid' 
        elsif corner_position(n, grid_array) == 'Error'
            return 'Error: Princess Peach is not in a corner'
        end
    end
    
    def displayPathtoPrincess(n, grid)
        grid_array = Array.new(grid.split(''))
    
        error = error_handling(n, grid)
    
        if error != nil
            return error
        end
    
        verticle = corner_position(n, grid_array).split(' ')[0]
    
        horizontal = corner_position(n, grid_array).split(' ')[1]
    
        steps_needed = ((n - 1) / 2)
    
        string = ''
    
        steps_needed.times do
            string << "#{verticle}\n"
        end
    
        steps_needed.times do
            string << "#{horizontal}\n"
        end
    
        return string.strip
    end
end

GameRunner.new.run