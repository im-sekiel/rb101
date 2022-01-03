#Problem 1
#Write a method that takes two arguments, a string and a positive 
#integer, and prints the string as many times as the integer indicates.

def repeat(string, num)
  num.times {puts string }
end

#Problem 2
#Write a method that takes on integer argument and returns true if odd

def is_odd?(num)
  num % 2 == 1
end


#Problem 3
#Write a method that takes one arguement, a positive integer, and returns
#a list of the digits in the number.

def digit_list(num)
  num.digits.reverse
end

#Problem 4
#Write a method that counts the number of occurences
#of each element in a given array

def count_occurrences(array)

  count_hash = Hash.new(0)
  array.each {|element| count_hash[element] += 1}

  count_hash

end

#Problem 5
#Write a method that takes on argument, a string, and returns a new string
#with the words in reverse order

def reverse_sentence(string)
  new_string = ''
  string.split.reverse.each {|element| new_string << (' ' + element) }
  new_string.lstrip
end

#Problem 6
#Write a method that takes one argument, a string containing one or more words, 
#and returns the given string with words that contain five or more characters 
#reversed. Each string will consist of only letters and spaces. Spaces should 
#be included only when more than one word is present.

def reverse_words(string)
  new_string = ''
  string.split.each do |element|
    if element.length < 5
      new_string << (' ' + element) 
    else
      new_string << (' ' + element.reverse)
    end
  end

  new_string.lstrip
end

#Problem 7
#Write a method that takes one argument, a positive integer, and returns a 
#string of alternating 1s and 0s, always starting with 1. The length of the 
#string should match the given integer.

def stringy(int)
  bi_string = ''
  int.times {|i| bi_string << (((i + 3) % 2).to_s) }
  bi_string
end

#Problem 8
#Write a method that takes one argument, an array containing integers, and 
#returns the average of all numbers in the array. The array will never be 
#empty and the numbers will always be positive integers. Your result should 
#also be an integer.
def average(array)
  sum = 0
  array.each {|i| sum = i + sum }
  sum / array.length
end

#Problem 9
#Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(int)
  int.digits.reduce(:+)
end

#Problem 10
#Write a method that takes two arguments, a positive integer and a boolean, 
#and calculates the bonus for a given salary. If the boolean is true, the 
#bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, boolean)
  if boolean
    salary / 2
  else
    salary - salary
  end
end