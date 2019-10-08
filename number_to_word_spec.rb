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

  context "21 - 99" do
    it 'return twenty three given 23' do
      expect(@number_to_word.translate(23)).to eq('twenty three')
    end

    it 'return thirty given 30' do
      expect(@number_to_word.translate(30)).to eq('thirty')
    end

    it 'return fourty two given 42' do
      expect(@number_to_word.translate(42)).to eq('fourty two')
    end

    it 'return seventy six given 76' do
      expect(@number_to_word.translate(76)).to eq('seventy six')
    end

    it 'return eighty one given 81' do
      expect(@number_to_word.translate(81)).to eq('eighty one')
    end

    it 'return ninety nine given 99' do
      expect(@number_to_word.translate(99)).to eq('ninety nine')
    end
  end

  context "100 - 999" do
    it 'return one hundred given 100' do
      expect(@number_to_word.translate(100)).to eq('one hundred')
    end

    it 'return one hundred eleven given 111' do
      expect(@number_to_word.translate(111)).to eq('one hundred eleven')
    end

    it 'return two hundred thirty four given 234' do
      expect(@number_to_word.translate(234)).to eq('two hundred thirty four')
    end

    it 'return five hundred fifty given 550' do
      expect(@number_to_word.translate(550)).to eq('five hundred fifty')
    end

    it 'return eight hundred given 800' do
      expect(@number_to_word.translate(800)).to eq('eight hundred')
    end

    it 'return nine hundred ninety nine given 999' do
      expect(@number_to_word.translate(999)).to eq('nine hundred ninety nine')
    end
  end

  context "1000 - 999999" do
    it 'return one thousand given 1000' do
      expect(@number_to_word.translate(1000)).to eq('one thousand')
    end

    it 'return two thousand nine given 2009' do
      expect(@number_to_word.translate(2009)).to eq('two thousand nine')
    end

    it 'return two thousand nineteen given 2019' do
      expect(@number_to_word.translate(2019)).to eq('two thousand nineteen')
    end

    it 'return two thousand eight hundred twenty three given 2823 ' do
      expect(@number_to_word.translate(2823)).to eq('two thousand eight hundred twenty three')
    end

    it 'return ten thousand given 10000' do
      expect(@number_to_word.translate(10000)).to eq('ten thousand')
    end

    it 'return twenty five thousand two hundred thirty four given 25234' do
      expect(@number_to_word.translate(25234)).to eq('twenty five thousand two hundred thirty four')
    end

    it 'return nine hundred ninety nine thousand nine hundred ninety nine given 999999' do
      expect(@number_to_word.translate(999999)).to eq('nine hundred ninety nine thousand nine hundred ninety nine')
    end
  end
end