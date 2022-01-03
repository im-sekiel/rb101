#Problem 1 
# def greetings(array, hash)
#   name = array.join(' ')
#   job = []

#   hash.each {|key, value| job << value}
#   occupation = job.join(' ')

#   "Hello, #{name}! Nice to have a #{occupation} around."

# end

##Problem 2
# def double?(number)
#   string = number.to_s
#   first_half = string[0, string.length / 2]
#   second_half = string[string.length / 2..-1]

#   first_half == second_half
# end

# def twice(number)
#   return number if double?(number)
#   number * 2
# end 

##Problem 3
# def negative(number)
#   if number > 0
#     -number
#   else
#     number
#   end
# end

##Problem 4
# def sequence(number)
#   array = Array.new
#   1.upto(number) {|num| array << num}
#   array
# end

##Problem 5
# def uppercase?(string)
#   string == string.upcase
# end

##Problem 6
# def word_lengths(string)
#   array = string.split

#   array.map {|word| "#{word} #{word.length}"}
# end

##Problem 7
# def swap_name(string)
#   array = string.split
#   "#{array[1]}, #{array[0]}"
# end

##Problem 8
# def sequence(count, int)
#   array = []
#   1.upto(count) {|i| array << int * i}
#   array
# end

##Problem 9
# def get_grade(score1, score2, score3)
#   average = (score1 + score2 + score3) / 3

#   case
#   when 90 <= average 
#     "A"
#   when 80 <= average
#     "B"
#   when 70 <= average
#     "C"
#   when 60 <= average
#     "D"
#   else
#     "F"
#   end
# end

##Problem 10
# def buy_fruit(array)
#   answer = []
#   array.to_h.each do |key, value|
#     (1..value).to_a.each {|i| answer << key }
#   end
#   answer

# end

##Problem 11
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagrams(array)
  arrays = []

  loop do
    selected = []

    matches = array.map {|word| word.gsub(/["#{array[0]}"]/, "")}

    matches.each.with_index {|word, i| selected << array[i] if word == ""}

    selected.each {|word| array.delete(word) if array.include?(word)}

    arrays << selected
    break if array.empty?
  end
  arrays.each {|array| p array}
end

anagrams(words)
