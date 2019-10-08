class NumberTooBigError < StandardError
  def initialize
    super('Number is too big')
  end
end

class InvalidNumberError < StandardError
  def initialize
    super('Input is not an integer number')
  end
end

class NegativeNumberError < StandardError
  def initialize
    super('Input should not be a negative number')
  end
end

class NumberToWord
  TRILLION = 1_000_000_000_000
  BILLION = 1_000_000_000
  MILLION = 1_000_000
  THOUSAND = 1_000
  HUNDRED = 100
  TEN = 10
  TWENTY = 20
  ZERO = 0

  def initialize
    @word = ''
  end

  def translate(number)
    raise InvalidNumberError unless number.is_a? Integer
    raise NumberTooBigError if number >= TRILLION
    raise NegativeNumberError if number < ZERO

    return number_map[number] if number.zero?

    if number >= BILLION
      get_billions(number)

      number = number % BILLION
    end

    if number >= MILLION
      get_millions(number)

      number = number % MILLION
    end

    if number >= THOUSAND
      get_thousands(number)

      number = number % THOUSAND
    end

    get_hundreds_tens_units(number)

    @word.strip
  end

  private

  def get_billions(number)
    num_billions = number / BILLION
    get_hundreds_tens_units(num_billions)

    @word << " billion"
  end

  def get_millions(number)
    num_millions = number / MILLION
    get_hundreds_tens_units(num_millions)

    @word << " million"
  end

  def get_thousands(number)
    num_thousand = number / THOUSAND
    get_hundreds_tens_units(num_thousand)

    @word << " thousand"
  end

  def get_hundreds_tens_units(number)
    if number >= HUNDRED
      get_hundreds(number)

      number = number % HUNDRED
    end

    if number > TWENTY
      get_tens(number)

      number = number % TEN
    end

    if number > ZERO
      get_units(number)
    end
  end

  def get_hundreds(number)
    num_hundred = number / HUNDRED
    @word << " #{number_map[num_hundred]} hundred"
  end

  def get_tens(number)
    num_ten = number / TEN
    @word << " #{number_map[num_ten * TEN]}"
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