#Problem 1
#Formula
# minutes = .XX x 60 
# seconds = .XX x 60 
  # Turn this into int or #floor to round  °°°°°°°
def dms(f_num)
  float = f_num.to_f
  degree = float.floor

  return %(0°00'00") if degree == (0 || 360)

  decimal = (float % degree).ceil(3)
  minutes = decimal * 60
  min_whole_num = minutes.floor.to_s

  if minutes.floor != 0
    seconds = (minutes % minutes.floor).floor(1) * 60
  else
    seconds = 0
  end

  degree = degree.to_s
  seconds = seconds.floor.to_s

  %(#{degree.rjust(2, "0")}°#{min_whole_num.rjust(2, "0")}'#{seconds.rjust(2, "0")}")

end

#Problem 2

def remove_vowels(array)
  array.each { |e| e.delete!("aeiouAEIOU")}
end

#Problem 3
Input is number of digits in digit
Output is array.length of that fibonacci array
def find_fibonacci_index_by_length(int)
  fibo = [1, 1]
  i, ii = 0, 1
  answer = 0

  loop do
    sum = fibo[i] + fibo[ii]
    fibo << sum
    sum

    break if sum.to_s.length == int
    i += 1
    ii += 1
  end
  fibo.length
end

#Problem 4

def reverse!(array)
  indexes = -array.length
  counter = -1
  temp_array = []

  loop do  
    temp_array << array[counter]
    break if counter == indexes
    counter -= 1
  end

  temp_array

end

#Problem 5

def reverse(array)
  return array if array.length == 0
  indexes = -array.length
  counter = -1
  temp_array = []

  loop do  
    temp_array << array[counter]
    break if counter == indexes
    counter -= 1
  end

  temp_array

end

#Problem 6

def merge(array1, array2)
  array1.zip(array2).flatten.uniq.sort
end

#Problem 7

def halvsies(array)
  arr1 = []
  arr2 = []

  half = ((array.length - 1) / 2).ceil

  array.each do |element|
    arr1 << element
    break if array.index(element) == half
  end

  loop do
    half += 1 
    break if half == array.length
    arr2 << array[half]
  end

  return arr1, arr2

end

#Problem 8

def find_dup(array)
  selected = nil

  array.each_index do |main_index|
    array.each_index do |index|

      if array[index + main_index + 1] == array[main_index]
        selected = array[main_index]
        break
      end
    end

    break if selected 
  end

  selected
end

#Problem 9

def include?(array, obj)
  array.each {|element| return true if element == obj}
  false
end

#Problem 10

def triangle(num)
  spaces = num - 1
  splat = 1
  puts

  loop do
    puts " " * spaces + "*" * splat
    break if splat == num
    spaces -= 1
    splat += 1
  end
end



  
