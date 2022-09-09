def getting_started
    number = gets.to_i

    grid = Array.new(number)

    (0...number).each do |i|
        grid[i] = gets.strip
    end

    grid = grid.join

    return {
        number: number,
        grid: grid
    }
end

def middle(array)
    mid = (array.count - 1) / 2
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

    grid_confirmation = (n * n) == grid_array.count

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

    if error_handling(n, grid_array) != nil
        return error_handling(n, grid_array)
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

input = getting_started

puts displayPathtoPrincess(input[:number], input[:grid])
