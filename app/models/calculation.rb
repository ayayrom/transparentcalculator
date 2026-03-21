class Calculation < ApplicationRecord
  validates :equation, presence: true
  validates :equation, format: { 
    with: /\A[\d\+\-\*\/\^\(\)\.\s]+\z/, 
    message: "contains invalid characters. Only numbers and math operators are allowed." 
  }

  validate :equation_structure_check

  private

  def equation_structure_check
    return if equation.blank?

    # strip all spaces of space in the string
    stripped_eq = equation.gsub(/\s+/, "")

    # balanced parentheses
    if stripped_eq.count("(") != stripped_eq.count(")")
      errors.add(:equation, "has unmatched parentheses")
    end

    # invalid operators
    # this regex checks for ++, **, //, +*, and any other invalid operators
    if stripped_eq.match?(/[\+\*\/\^]{2,}/)
      errors.add(:equation, "contains invalid operators")
    end

    # no beginning operators
    if stripped_eq.match?(/\A[\*\/\^]/)
      errors.add(:equation, "cannot start with multiplication, division, or exponent operator")
    end

    # no ending operators
    if stripped_eq.match?(/[\+\-\*\/\^]\z/)
      errors.add(:equation, "cannot end with a math operator")
    end

    # no )( and implicit multiplication
    if stripped_eq.match?(/\)\(/) || 
       stripped_eq.match?(/\d\(/) || 
       stripped_eq.match?(/\)\d/)
       errors.add(:equation, "requires an explicit operator (*) between numbers and parentheses")
    end
  end
end
