require 'pry'

def displayPathtoPrincess(n, grid)

    grid_array = Array.new(grid.split(''))

    number_confirmation = (n.odd? && 3 <= n && n < 100)

    grid_confirmation = (n * n) == grid_array.count

    if number_confirmation == false
        return 'Error: Input Needs to be an Odd Number Between 3 - 99'
    elsif number_confirmation && grid_confirmation == false
        return "Grid Doesn't Match n x n Format"
    end
end