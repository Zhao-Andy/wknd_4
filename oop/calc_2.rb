# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

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

class FancyCalculator
  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
calc = FancyCalculator.new

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
