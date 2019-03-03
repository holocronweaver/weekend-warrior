# To run tests, do:
# ruby robot_name_spec.rb
class Robot
  attr_reader :name

  def initialize
    self.reset
  end

  def reset
    # Generate name.
    @name = Robot.rand_char + Robot.rand_char
    3.times do
      @name += Robot.rand_digit.to_s
    end
  end

  def self.rand_digit
    # Returns a random digit, 0-9.
    rand(9)
  end

  def self.rand_char
    # Returns a random uppercase English letter.

    # The trick here is that ASCII uppercase letters start at integer
    # 65 = 'A' and go up to 65 + 25 = 90 = 'Z'. For more info, see:
    # https://www.w3schools.com/charsets/ref_html_ascii.asp
    # and
    # https://en.wikipedia.org/wiki/ASCII

    # tl;dr - Since computers only understand numbers, the ASCII
    # standard was developed to create a uniform way to map numbers to
    # characters. This map is called a symbol table. Under the hood
    # computers store text files by converting the character symbols
    # to numbers, then when a text editor reads the file it translates
    # the numbers back to characters. It happens to be that the range
    # 65 to 90 in the symbol table maps to all the uppercase English
    # letters!
    (65 + rand(26)).chr
  end

end
