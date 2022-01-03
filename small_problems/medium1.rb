##Problem 1
# def rotate_array(array)
#   dupl = array.dup
#   dupl.append(dupl.shift)
#   dupl
# end

##Problem 2
# def rotate_rightmost_digits(numbers, index)
#   array = numbers.digits
#   elements = array[0, index]
#   difference = (array - elements).reverse
#   (index - 1).times {|i| elements = rotate_array(elements)}
#   (difference + elements.reverse).join.to_i

# end

##Problem 3

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

##Problem 4

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

##Problem 5
def diamond(num)
  ast = '*'
  counter = 1
  spaces = num
  return puts '*' if num == 1
  #Top side
  loop do
    space_side = (spaces - counter) / 2
    puts ' ' * space_side + ast * counter + ' ' * space_side
    counter += 2
    break if counter >= num
  end

  #Bottom Side
  loop do
    space_side = (spaces - counter) / 2
    puts ' ' * space_side + ast * counter + ' ' * space_side
    counter -= 2
    break if counter <= 0
  end

end