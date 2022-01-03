##Problem 1
def ask_num(num)
  puts "==> Enter the #{num} number: "
end

array = []

5.times do |num|
  i = num + 1
  ask_num(i)
  input = gets.chomp.to_i
  array << input
end

ask_num("last")
input = gets.chomp.to_i

if array.include?(input)
  puts "The number #{input} appears in #{array}"
else
  puts "The number #{input} does not appear in #{array}"
end

#Problem 2
puts "==> Enter the first number:"
i = gets.chomp.to_i
puts "==> Enter the first number:"
j = gets.chomp.to_i

puts "==> #{i} + #{j} = #{i + j}"
puts "==> #{i} - #{j} = #{i - j}"
puts "==> #{i} * #{j} = #{i * j}"
puts "==> #{i} / #{j} = #{i / j}"
puts "==> #{i} % #{j} = #{i % j}"
puts "==> #{i} ** #{j} = #{i ** j}"

#Problem 3
puts "Please write a word or multiple words:"
input = gets.chomp
count = 0
times = input.gsub(' ', '').each_char { |e| count += 1 if e }
puts "There are #{count} characters in \"#{input}\""

#Problem 4
def multiply(i, ii)
  i * ii
end

multiply(5, 3)

#Problem 5
def square(num)
  multiply(num, num)
end

puts square(-8)

#Problem 6
def xor?(boolean1, boolean2)
  if boolean1 == boolean2
    return false
  elsif (boolean1 || boolean2)
    return true
  end
end

#Problem 7
def oddities(arr)
  array = []
  arr.each_index { |i| array << arr[i] if i.even? }
  array
end

#Problem 8
def palindrome?(string)
  string == string.reverse
end

#Problem 9
def real_palindrome?(string)
  new_s = string.gsub(/\W/, '').downcase
  palindrome?(new_s)
end

#Problem 10
def palindromic_number?(num)
  num.digits.to_s.delete("^0-9").to_i == num
end





