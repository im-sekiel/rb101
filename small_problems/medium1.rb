## Problem 1
# def rotate_array(array)
#   dupl = array.dup
#   dupl.append(dupl.shift)
#   dupl
# end

## Problem 2
# def rotate_rightmost_digits(numbers, index)
#   array = numbers.digits
#   elements = array[0, index]
#   difference = (array - elements).reverse
#   (index - 1).times {|i| elements = rotate_array(elements)}
#   (difference + elements.reverse).join.to_i

# end

## Problem 3

# def max_rotation(number)
#   length = number.to_s.length
#   string = ''
#   new_num = number

#   length.times do |i|
#     p num = number.to_s.chars
#     new_num = rotate_rightmost_digits(new_num, length)
#     p new_num
#     string << new_num.to_s[0]
#     p string
#     new_num = new_num.to_s.chars[1..-1].join.to_i
#     length = new_num.digits.length
#   end


#   string.to_i
# end
##This is how far I got before I gave up and looked at the solution

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#   number = rotate_rightmost_digits(number, n)
#   end
#   number
# end

## Problem 4

# def lights(num)
#   lights = (1..num).to_a # => [1, 2, 3, 4, 5]
#   switches = []
#   num.times {|x| switches << "on"} # switches = [1, 1, 1, 1, 1]
#   index = 0

#   2.upto(num) do |int| #2, 3, 4, 5
#     index = int -1

#     switches.each do |switch|
#       break if index  > switches.length

#       case switches[index]
#       when "on"
#         switches[index] = "off"
#       when "off"
#         switches[index] = "on"
#       end
#       index += int
#     end

#   end

#   values = []

#   switches.each.with_index do |int, ind|
#     if int == "on"
#       values << ind + 1
#     end
#   end

#   values

# end

## Problem 5

# def diamond(num)
#   ast = '*'
#   counter = 1
#   spaces = num
#   return puts '*' if num == 1
#   #Top side
#   loop do
#     space_side = (spaces - counter) / 2
#     puts ' ' * space_side + ast * counter + ' ' * space_side
#     counter += 2
#     break if counter >= num
#   end

#   #Bottom Side
#   loop do
#     space_side = (spaces - counter) / 2
#     puts ' ' * space_side + ast * counter + ' ' * space_side
#     counter -= 2
#     break if counter <= 0
#   end

# end

## Problem 6 - Stack Machine Interpretation

# def minilang(string)
#   register = 0
#   stack = []

#   # Turn string into array containing strings and ints
#   array = string.split.map do |element|
#             if element.to_i == 0
#               element
#             else
#               element.to_i
#             end
#           end

#   array.each do |element|
#     if element.is_a? Integer
#       register = element
#       next
#     end
#     case element
#     when "PUSH"
#       stack << register
#     when "ADD"
#       register = register + stack[-1]
#       stack.pop
#     when "SUB"
#       register = register - stack[-1]
#       stack.pop
#     when "MULT"
#       register = register * stack[-1]
#       stack.pop
#     when "DIV"
#       register = register / stack[-1]
#       stack.pop
#     when "MOD"
#       register = register % stack[-1]
#       stack.pop
#     when "POP"
#       register = stack.pop
#     when "PRINT"
#       puts register
#     end
#   end

# end

## Problem 7 - Word to Digit

# NUMBERS = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 
#             'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 
#             'nine' => '9', 'zero' => '0' }

# def word_to_digit(string)
#   NUMBERS.keys.each do |word|
#     string.gsub!(/\b#{word}\b/, NUMBERS[word])
#   end
#   string
# end

## Problem 8 - Fibonacci Numbers (Recursion)

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# p fibonacci(41)

## Problem 9 - Fibonacci Numbers (Procedural)

# def fibonacci(nth)
#   return 1 if nth == 1 || nth == 2
#   nth = nth - 2
#   fib = [1, 1]
#   counter = 0
#   loop do
#     fib << fib[counter] + fib[counter + 1]
#     counter += 1
#     break if counter >= nth
#   end
#   fib[-1].to_s[-1]

# end

## Problem 10 - Fibonacci Numbers (Last Digit)
## My solution was .to_s[-1].to_i, but I couldn't compute bigger numbers

# def fibonacci_last(nth)
#   start = [1, 1]
#   3.upto(nth) do
#     start = [start.last, (start.first + start.last) % 10]
#   end

#   start
# end