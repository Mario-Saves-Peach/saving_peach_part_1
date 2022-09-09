require 'rails_helper'
require 'pry'
# require './app/file_name'

RSpec.describe 'displayPathtoPrincess(n, grid) Method' do
    before :each do
        @n = 3
        @grid = '----m-p--'
    end

    describe 'number input' do
        it 'n is an odd number' do
            response = displayPathtoPrincess(@n, @grid)

            expect(@n.odd?).to be true
        end

        it 'returns error if n is not an odd number from 3 - 99' do
            n = 4

            response = displayPathtoPrincess(n, @grid)
            
            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')

            n = 101

            response = displayPathtoPrincess(n, @grid)

            expect(response).to eq('Error: Input Needs to be an Odd Number Between 3 - 99')
        end
    end

    describe 'grid input' do
        it 'Returns Error if grid is not n x n format' do
            n = 7

            response = displayPathtoPrincess(n, @grid)

            expect(response).to eq("Grid Doesn't Match n x n Format")
        end

        it "Returns Error if Mario isn't in the middle of the grid" do
            grid = '--m---p--'

            response = displayPathtoPrincess(@n, grid)

            expect(response).to eq("Error: Mario is not centered on your grid")
        end

        
    end
end