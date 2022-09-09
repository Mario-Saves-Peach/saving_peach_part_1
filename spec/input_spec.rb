require 'rails_helper'
# require './app/file_name'

RSpec.describe 'displayPathtoPrincess(n, grid) Method' do
    before :each do
        @n = 5
        @grid = '----m-p--'
    end

    it 'n is an odd number' do
        displayPathtoPrincess(@n, @grid)

        expect(@n.odd?).to be true
    end

    it 'returns error if n equals an even number' do

    end


    
end