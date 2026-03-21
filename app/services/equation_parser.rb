class EquationParser
  attr_reader :equation_string, :tokens

  def initialize(equation_string)
    @equation_string = equation_string.gsub(/\s+/, "")
    @tokens = []
  end

  def process
    tokenize
    # parse_to_tree
    # evaluate

    # return tokens so we can test if tokenizer works
    @tokens
  end

  def tokenize
    chars = @equation_string.chars
    current_number = ""

    chars.each_with_index do |char, index|
      if char.match?(/[\d\.]/) # if digit or decimal
        current_number << char
      elsif char == '-' && (index == 0 || chars[index - 1].match?(/[+\-*\/^(]/))
        # if subtraction or negative
        current_number << char
      else # else standard operator or parenthesis
        if current_number.present?
          @tokens << current_number
          current_number = ""
        end

        @tokens << char
      end
    end

    @tokens << current_number if current_number.present?
  end
end
