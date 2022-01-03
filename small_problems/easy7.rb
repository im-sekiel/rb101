#Problem 1
def interleave(array1, array2)
  array1.zip(array2).flatten
end

#Problem 2
def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  string.each_char do |element|
    if /[a-z]/ =~ element
      hash[:lowercase] += 1
    elsif /[A-Z]/ =~ element
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end 
  hash

end

#Problem 3
def word_cap(string)
  arr = string.split
  arr.each {|word| word.capitalize!}.join(" ")
end

#Problem 4
def swapcase(string)

  upcase = ('A'..'Z').to_a
  downcase = ('a'..'z').to_a

  string.chars.map do |char|
    if /[a-z]/ =~ char
      index = downcase.index(char)
      upcase[index]
    elsif /[A-Z]/ =~ char
      index = upcase.index(char)
      downcase[index]
    else
      char
    end
  end.join

end

#Problem 5

def staggered_case(string)
  new = string.chars.each_with_index.map do |char, i|
          i.even? ? char.upcase : char.downcase
        end
  new.join
end

#Problem 6

def staggered_case(string)
  alphabet = ('A'..'Z').to_a + ('a'..'z').to_a
  count = 0
  new_string = ''

  string.each_char do |char|
    if char =~ /[A-Za-z]/
      count.even? ? new_string << char.upcase : new_string << char.downcase
      count += 1
    else
      new_string << char
    end
  end
  new_string

end

#Problem 7

def show_multiplicative_average(array)
  multiple = array.reduce(&:*)
  array_length = array.length.to_f
  q = multiple / array_length
  puts format("%.3f", q)
end

#Problem 8

def multiply_list(arr1, arr2)
  product = []
  arr2.each_index {|index| product << arr1[index] * arr2[index] }
  product
end

#Problem 9

def multiply_all_pairs(arr1, arr2)
  array = []
  arr1.each {|int| arr2.each {|int2| array << int * int2 }}
  array.sort
end

#Problem 10

def penultimate(string)
  string.split[-2]
end
