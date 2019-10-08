class NumberTooBigError < StandardError
  def initialize
    super('Number is too big')
  end
end

class NumberToWord
  def initialize
    @word = ''
  end

  def translate(number)
    @word = ''

    return number_map[number] if number.zero?
    raise NumberTooBigError if number >= 1_000_000_000_000

    if number >= 1_000_000_000
      get_billions(number)

      number = number % 1_000_000_000
    end

    if number >= 1_000_000
      get_millions(number)

      number = number % 1_000_000
    end

    if number >= 1000
      get_thousands(number)

      number = number % 1000
    end

    get_hundreds_tens_units(number)

    @word.strip
  end

  private

  def get_billions(number)
    num_billions = number / 1_000_000_000
    get_hundreds_tens_units(num_billions)

    @word << " billion"
  end

  def get_millions(number)
    num_millions = number / 1_000_000
    get_hundreds_tens_units(num_millions)

    @word << " million"
  end

  def get_thousands(number)
    num_thousand = number / 1000
    get_hundreds_tens_units(num_thousand)

    @word << " thousand"
  end

  def get_hundreds_tens_units(number)
    if number >= 100
      get_hundreds(number)

      number = number % 100
    end

    if number > 20
      get_tens(number)

      number = number % 10
    end

    if number > 0
      get_units(number)
    end
  end

  def get_hundreds(number)
    num_hundred = number / 100
    @word << " #{number_map[num_hundred]} hundred"
  end

  def get_tens(number)
    num_ten = number / 10
    @word << " #{number_map[num_ten * 10]}"
  end

  def get_units(number)
    @word << " #{number_map[number]}"
  end

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
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety'
    }
  end
end