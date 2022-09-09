require 'rails_helper'
require 'pry'
require './app/display_path.rb'

RSpec.describe 'displayPathtoPrincess(n, grid) Method' do
    before :each do
        @n = 3
        @grid = '----m-p--'
    end

    describe 'Saving Princess Peach!!' do
        it 'returns steps needed to save peach' do
            response = displayPathtoPrincess(@n, @grid)

            expect(response).to eq('DOWN \nLEFT')
        end
    end
end