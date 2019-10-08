require_relative 'number_to_word'

RSpec.describe NumberToWord do
  before do
    @number_to_word = NumberToWord.new
  end

  context '0 - 20' do
    it 'return zero given 0' do
      expect(@number_to_word.translate(0)).to eq('zero')
    end

    it 'return one given 1' do
      expect(@number_to_word.translate(1)).to eq('one')
    end

    it 'return eight given 8' do
      expect(@number_to_word.translate(8)).to eq('eight')
    end

    it 'return eleven given 11' do
      expect(@number_to_word.translate(11)).to eq('eleven')
    end

    it 'return fifteen given 15' do
      expect(@number_to_word.translate(15)).to eq('fifteen')
    end

    it 'return twenty given 20' do
      expect(@number_to_word.translate(20)).to eq('twenty')
    end
  end
end