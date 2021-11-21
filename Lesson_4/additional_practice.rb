#Problem 1
#Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#Example 1
counter_one = -1
one_hash = flintstones.to_h do |element|
           counter_one += 1
           [element, counter_one]
end

one_hash # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

#Example 2
array_to_hash_hash = {}
flintstones.each_with_index do |element, index|
  array_to_hash_hash[element] = index
end

array_to_hash_hash # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

#Problem 2
#Add up all of the ages from Munster family hash\

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#Example 1
age_total = 0
ages.each_value {|value| age_total += value }

age_total # => 6174

ages

#Example 2
age_total_2 = 0
ages.each {|key, value| age_total_2 += value }

age_total_2

#Problem 3
#Remove people with age 100 and greater

agess = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

agess.delete_if {|key, value| value > 100 }

agess # => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

#Example 2
agess = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

agess_selected = agess.select {|key, value| value <= 100 } # => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

#Problem 4
#Pick out the minimum age from our current Munster Family Hash:

#Example 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min # => 10

#Example 2
ages_array = []
ages.select {|key, value| ages_array << value}

ages_array.min # => 10

#Problem 5
#Find the index of the first name that start with "Be"

#Example 1
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

name_be = nil
flintstones.each_with_index {|element, index| name_be = index if element.match?(/Be/) }

name_be # => 3

#Example 2
flintstones.find_index { |name| name.match?(/Be/) } # => 3

#Problem 6
#Amend this array so that the names are all shortened to just the first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each {|element| element.chop! until element.size == 3} # => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

#Problem 7
#Create a hash that expresses the frequency with which each letter occurs in this string:

#Example 1
statement = "The Flintstones Rock"
statement.gsub!(' ', '')
statement_hash = {}
counter = 0

statement.each_char {|char| statement_hash[char] = 0}

loop do
  if statement_hash.has_key?(statement[counter])
    statement_hash[statement[counter]] += 1
  end
  break if statement.length < counter
  counter += 1
end

statement_hash # => {"T"=>1, "h"=>1, "e"=>2, "F"=>1, "l"=>1, "i"=>1, "n"=>2, "t"=>2, "s"=>2, "o"=>2, "R"=>1, "c"=>1, "k"=>1}

#Example 2: Found this solution after some googling, which is concise and simple
statement = "The Flintstones Rock"
statement.gsub!(' ', '')
statement_hash = Hash.new(0)

statement.each_char {|char| statement_hash[char] += 1}

statement_hash # => {"T"=>1, "h"=>1, "e"=>2, "F"=>1, "l"=>1, "i"=>1, "n"=>2, "t"=>2, "s"=>2, "o"=>2, "R"=>1, "c"=>1, "k"=>1}

#Problem 8
#What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
hi = numbers.each do |number|
  p number
  numbers.shift(1)
end
# numbers block will output [1, 2, 3, 4], while numbers array is []

#What would be output by this code?
numbers = [1, 2, 3, 4]
hii = numbers.each do |number|
  p number
  numbers.pop(1)
end
#Same as first example, but something tells me I'm wrong
#Yep, I was very wrong

#Problem 9
#Write your own version of the rails titleize implementation

words = "the flintstones rock"

words.gsub!(/\b\w/) {|letter| letter.capitalize }

words # => "The Flintstones Rock"

#Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Given this hash, modify the hash that each member of the family has an additional "age_group"
#That has one of the three values
#A kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

CHILD = 0..17
ADULT = 18..64
SENIOR = 65..Float::INFINITY #Looked up how to represent Infinity
munsters_array = munsters.to_a

# p munsters_array = munsters.to_a
# p munsters_array[0][1] # {"age"=>32, "gender"=>"male"}
# p munsters_array[0][1]["age"] # 32
# p munsters_array[0][1]["age_group"] = "child" # "child"
# p munsters_array[0][1] # {"age"=>32, "gender"=>"male", "age_group"=>"child"}

counter = 0
loop do
  current_person_age = munsters_array[counter][1]["age"]
  current_person = munsters_array[counter][1]

  if CHILD.cover?(current_person_age)
    current_person["age_group"] = "child"
  elsif ADULT.cover?(current_person_age)
    current_person["age_group"] = "adult"
  else
    current_person["age_group"] = "senior"
  end
  break if counter >= (munsters_array.length - 1)
  counter += 1
end

munsters_array.to_h # =>

# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"},
#  "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"},
#  "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"},
#  "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"child"},
#  "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}