require 'rails_helper'
require 'pry'
require './app/display_path.rb'

RSpec.describe 'displayPathtoPrincess(n, grid) Error Handling' do
    before :each do
        @n = 3
        @grid = '----m-p--'
    end

    describe 'number input errors' do
        it 'returns error if n is not an odd number from 3 - 99' do
            n = 4

            response = MoveFinder.new.displayPathtoPrincess(n, @grid)

            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')

            n = 101

            response = MoveFinder.new.displayPathtoPrincess(n, @grid)

            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')
        end
    end

    describe 'grid input errors' do
        it 'Returns Error if grid is not n x n format' do
            n = 7

            response = MoveFinder.new.displayPathtoPrincess(n, @grid)

            expect(response).to eq("Grid Doesn't Match n x n Format")
        end

        it "Returns Error if Mario isn't in the middle of the grid" do
            grid = '--m---p--'

            response = MoveFinder.new.displayPathtoPrincess(@n, grid)

            expect(response).to eq('Error: Mario is not centered on your grid')
        end

        it "Returns Error if peach isn't in the corner of the grid" do
            grid = '----m--p-'

            response = MoveFinder.new.displayPathtoPrincess(@n, grid)

            expect(response).to eq("Error: Princess Peach is not in a corner")
        end
    end
end