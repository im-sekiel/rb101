#Problem 1
def short_long_short(string1, string2)
  str1_count = string1.length
  str2_count = string2.length

  if str1_count > str2_count
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

#Problem 2
def century(year)

  mod = year % 100
  cent = year / 100

  if mod == 0
    return "#{cent}th"
  end
  cent += 1

  if cent.to_s.length >= 2
    tenth = cent.to_s[-2, 2].to_i
  else
    tenth = cent.to_s[-1].to_i
  end

  if tenth == 11 || tenth == 12 || tenth == 13
    return "#{cent}th"
  elsif (tenth % 10) == 1
    return "#{cent}st"
  elsif (tenth % 10) == 2
    return "#{cent}nd"
  elsif (tenth % 10) == 3
    return "#{cent}rd"
  else
    return "#{cent}th"
  end

end

#Problem 3
def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

#Problem 4

def leap_year?(year)
  if year <= 1752
    return true if year % 4 == 0
  end
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

#Problem 5
def multisum(num)
  arr = (1..num).to_a
  mult = []
  arr.each { |e| mult << e if ((e % 3 == 0) || (e % 5 == 0))}
  mult.reduce(:+)
end

#Problem 6
def running_total(array)
  returned = []
  sum = 0
  array.each_index do |i|
    sum += array[i]
    returned << sum
  end

  returned
end

#Problem 7
def string_to_integer(string)
  counter = 1
  sum = 0
  string.reverse.each_char do |char|
    case char
    when "0"
      sum += (0 * counter)
      counter *= 10
    when "1"
      sum += (1 * counter)
      counter *= 10
    when "2"
      sum += (2 * counter)
      counter *= 10
    when "3"
      sum += (3 * counter)
      counter *= 10
    when "4"
      sum += (4 * counter)
      counter *= 10
    when "5"
      sum += (5 * counter)
      counter *= 10
    when "6"
      sum += (6 * counter)
      counter *= 10
    when "7"
      sum += (7 * counter)
      counter *= 10
    when "8"
      sum += (8 * counter)
      counter *= 10
    when "9"
      sum += (9 * counter)
      counter *= 10
    end
  end
  sum
end

#Problem 8

 def string_to_integer(string)
  numbers = {
    "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
  }

  array = string.chars.map { |char| numbers[char]}

  sum = 0
  array.each { |number| sum = 10 * sum + number}
  sum
end

def string_to_signed_integer(string)
  if string[0] == '-'
    string.delete!(string[0])
    number = string_to_integer(string)
    return -1 * number
  elsif string[0] == '+'
    string.delete!(string[0])
    number = string_to_integer(string)
    return number
  else
    string_to_integer(string)
  end
end

# Problem 9

def integer_to_string(int)
  numbers_hash = {
    0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
    5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
  }

  numbers_arr = int.digits.reverse!

  numbers_arr.map { |i| numbers_hash[i] }.join

end

# Problem 10

def signed_integer_to_string(int)
  if int == 0
    return '0'
  elsif int <= 0
    int = int * -1
    integer_to_string(int).prepend('-')
  else
    integer_to_string(int).prepend('+')
  end
end

