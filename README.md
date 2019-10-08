# Introduction
Ruby script to generate number to words translation.

I developed this small program using TDD. You can check commit by commit to see how I progressed.

# Usage
The work to translate number to words is done by `NumberToWord`. To use it simply create new instance and call `#translate` with number as parameter

```
number_to_word = NumberToWord.new
number_to_word.translate(100)
#=> one hundred

number_to_word.translate(1000123)
#=> one million one hundred twenty three
```

I also provide `main.rb` script so that you can run it from command line and pass a number as parameter to see how `NumberToWord` in action.

```
$ ruby main.rb 1000123
one million one hundred twenty three
```

# Limitation
It only supports positive integer and max number is 999_999_999_999 (`nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine`)

# Exceptions
`NumberToWord` will raise an exeption if this condition applied.

Input is bigger than max   : `NumberTooBigError` is raised  
Input is not a number      : `InvalidNumberError` is raised  
Input is a negative number : `NegativeNumberError` is raised
