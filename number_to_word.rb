class NumberToWord
  def initialize
    @word = ''
  end

  def translate(number)
    @word = ''

    if number > 20 && number < 100
      num_ten = number / 10
      single  = number % 10

      @word << number_map[num_ten * 10]
      @word << " #{number_map[single]}" unless single.zero?
    end

    if number >= 0 && number <= 20
      @word << number_map[number]
    end

    @word
  end

  private

  def number_map
    {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'fourty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety'
    }
  end
end