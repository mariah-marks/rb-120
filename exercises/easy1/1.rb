=begin
Complete this class so that the test cases shown below work as intended. You are
free to add any methods or instance variables you need. However, do not make the
implementation details public.

You may assume that the input will always fit in your terminal window.

  Problem:
    - complete given code

    Given:
      Banner class
        public instance methods
          - initialize, 1 message argument
          - to_s
            returns array of strings, joined by newline char
            * invoke with `puts`

        private instance methods (called within class only)
          - horizontal rule
          - empty line
          - message line

  Data structures:
    - instance method to create substrings for `horizontal_rule`, `empty_line`

  Approach:
  Create substring of repeaed chars using helper method. Interpolate substring
  into substrings returned by horizontal_rule and empty_line. Make helper method
  private and let it call the getter method `message`.
=end

class Banner
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, \
     horizontal_rule].join("\n")
  end

  private

  def repeated_char(char)
    char * (message.size)
  end

  def horizontal_rule
    "+-#{repeated_char('-')}-+"
  end

  def empty_line
    "| #{repeated_char(' ')} |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
