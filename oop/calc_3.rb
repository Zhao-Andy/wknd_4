# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
calc = WhizBangCalculator.new

puts "Testing add!"
puts calc.add(40, 2) == 42 ? "PASS" : "F"

puts "Testing subtract!"
puts calc.subtract(44, 2) == 42 ? 'PASS' : 'F'

puts "Testing multiply!"
puts calc.multiply(7, 6) == 42 ? 'PASS' : 'F'

puts "Testing divide!"
puts calc.divide(84, 2) == 42 ? 'PASS' : 'F'

puts "Testing square root!"
puts calc.square_root(1764) == 42 ? 'PASS' : 'F'

puts "Testing hypotenuse!"
puts calc.hypotenuse(40, 14).round == 42 ? 'PASS' : 'F'


puts "testing exponent!"
puts calc.exponent(6.480746984, 2).to_i == 42 ? 'PASS' : 'F'
