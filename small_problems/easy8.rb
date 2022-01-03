#Problem 1

def sum_of_sums(array)
  total = 0
  sum = 0

  array.each do |int|
    sum += int
    total += sum
  end

  total
end

#Problem 2

def madlib()
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adjective = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp

  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

madlib

#Problem 3

def leading_substrings(string)
  array = string.chars
  solution = []
  sum = ''

  array.each {|char| solution << sum += char }
  solution

end

#Problem 4

def substrings(string)
  solution = []
  array = leading_substrings(string)
  loop do
    solution << array.dup
    array.map! {|element| element.delete(element[0])}
    break if array.join.size == 0
  end
  solution.flatten!.delete('')
  solution
end

#Problem 5

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  array = substrings(string)
  palindromes = []

  array.each do |string| 
    next if string.length == 1
    palindromes << string if string.reverse == string
  end

  palindromes
end

#Problem 6

def fizzbuzz(int1, int2)
  array = []
  int1.upto(int2) do |int|
    if int % 3 == 0 && int % 5 == 0
      array << "FizzBuzz"
    elsif int % 3 == 0
      array << "Fizz"
    elsif int % 5 == 0
      array << "Buzz"
    else
      array << int 
    end
  end

  array
end

#Problem 7

def repeater(string)
  new_string = ''
  string.each_char {|char| new_string << char * 2}
  new_string
end

#Problem 8
def consonants()
  alphabet = (('A'..'Z').to_a.concat(('a'..'z').to_a))
  vowels = %w(A E I O U a e i o u)

  vowels.each {|vowel| alphabet.delete(vowel)}
  alphabet
end

def double_consonants(string)
  new_string = ''
  string.each_char do |char| 
    if consonants.include?(char)
      new_string << char * 2 
    else 
      new_string << char
    end
  end
  new_string
end

#Problem 9
def reversed_number(int)
  int.to_s.reverse.to_i
end

#Problem 10
def center_of(string)
  int = string.length / 2

  case
  when string.length.odd?
    string[int]
  else
    string[int-1, 2]
  end

end