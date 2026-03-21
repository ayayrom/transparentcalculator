require "bigdecimal"
require "bigdecimal/util"

class EquationParser
  attr_reader :equation_string, :tokens, :rpn
  # reverse polish notation => rpn


  PRECEDENCE = {
    "+" => 1,
    "-" => 1,
    "*" => 2,
    "/" => 2,
    "^" => 3
  }.freeze

  # 2^3^2 is 2^(3^2)
  RIGHT_ASSOCIATIVE = [ "^" ].freeze

  def initialize(equation_string)
    @equation_string = equation_string.gsub(/\s+/, "")
    @tokens = []
    @rpn = []
  end

  def process
    tokenize
    parse_to_rpn
    evaluate
  end

  private

  def tokenize
    chars = @equation_string.chars
    current_number = ""

    chars.each_with_index do |char, index|
      if char.match?(/[\d\.]/) # if digit or decimal
        current_number << char
      elsif char == "-" && (index == 0 || chars[index - 1].match?(/[+\-*\/^(]/))
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

  def parse_to_rpn
    operator_stack = []
    output_queue = []

    @tokens.each do |token|
      if is_number?(token)
        output_queue << token # numbers go straight to output
      elsif is_operator?(token)
        while operator_stack.any? && is_operator?(operator_stack.last)
          # push operators to output if they have higher or equal precedence
          top_op = operator_stack.last

          if (RIGHT_ASSOCIATIVE.include?(token) &&
              PRECEDENCE[token] < PRECEDENCE[top_op]) ||
             (!RIGHT_ASSOCIATIVE.include?(token) &&
             PRECEDENCE[token] <= PRECEDENCE[top_op])
            output_queue << operator_stack.pop
          else
            break
          end
        end
        operator_stack << token
      elsif token == "(" # open parentheses go to stack
        operator_stack << token
      elsif token == ")" # closed parentheses trigger a dump of the stack
        while operator_stack.any? && operator_stack.last != "("
          output_queue << operator_stack.pop
        end
        operator_stack.pop # throws away the (
      end
    end

    while operator_stack.any?
      output_queue << operator_stack.pop
    end

    @rpn = output_queue
  end

  def evaluate
    eval_stack = []
    steps = []

    @rpn.each do |token|
      if is_number?(token)
        # decimal is better for division
        eval_stack << token.to_d
      elsif is_operator?(token)
        # pop right before left operand
        right = eval_stack.pop
        left = eval_stack.pop

        # catch a divide by zero case
        if token == "/" && right.zero?
          return { error: "Division by zero is undefined", steps: steps }
        end

        result = calculate(left, right, token)
        steps << "#{format_number(left)} #{token} #{format_number(right)} = #{format_number(result)}"

        eval_stack << result
      end
    end

    final_answer = format_number(eval_stack.pop)

    {
      final_answer: final_answer.to_s,
      steps: steps
    }
  end

  # HELPER FUNCTIONS

  def calculate(left, right, operator)
    case operator
    when "+" then left + right
    when "-" then left - right
    when "*" then left * right
    when "/" then left / right
    when "^" then left ** right
    end
  end

  def is_number?(token)
    token.match?(/\A-?\d+(\.\d+)?\z/)
  end

  def is_operator?(token)
    PRECEDENCE.key?(token)
  end

  def format_number(num)
    return 0 if num.nil?
    if num == num.to_i
      num.to_i
    else
      num.to_f
    end
  end
end
