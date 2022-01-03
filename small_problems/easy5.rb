##Problem 1

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

##Problem 2

# def time_of_day(min)
#   if min < 0
#     min += 1440 until min > 0
#   end

#   while min >= 1440
#     min -= 1440
#   end

#   hour, remainder = min.divmod(60)

#   hour < 10 ? hour = "0#{hour}" : hour = "#{hour}"
#   remainder < 10 ? remainder = "0#{remainder}" : remainder = "#{remainder}"

#   "#{hour}:#{remainder}"
# end

##Problem 3

# HOURS = 24
# MINUTES = 60
# MIN_IN_DAY = HOURS * MINUTES # 1440

# def after_midnight(string)
#   hour = string[0, 2].to_i * MINUTES
#   minutes = string[3, 2].to_i
#   total_min = hour + minutes

#   return 0 if hour == MIN_IN_DAY
#   total_min
# end

# def before_midnight(string)
#   return MIN_IN_DAY - after_midnight(string) if after_midnight(string) != 0
#   0
# end

##Problem 4

# def swap(string)
#   array = string.split.map do |e|
#     first = e[0]
#     last = e[-1]
#     e[-1] = first
#     e[0] = last
#     e
#   end
#   array.join(' ')
# end

##Problem 5

# def cleanup(string)
#   string.gsub(/[^a-z]+/, " ").split.join(' ').insert(0, " ").insert(-1, " ")
# end
# cleanup("---what's my +*& line?") == ' what s my line '

##Problem 6

# def word_sizes(string)
#   sizes = Hash.new(0)
#   string.split.each {|word| sizes[word.length] += 1}
#   sizes
# end

##Problem 7

# def word_sizes(string)
#   sizes = Hash.new(0)  
#   string.split.each do |word|
#     word.delete!("^a-zA-Z") 
#     sizes[word.length] += 1
#   end
#   sizes
# end

##Problem 8

# NUM_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 
#             'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 
#             'twelve', 'thirteen', 'fourteen', 'fifteen', 
#             'sixteen', 'seventeen', 'eighteen', 'nineteen']

# numbers = (0..19).to_a

# def alphabetic_number_sort(array)
#   sorted_numbers = []
#   sorted_words = NUM_WORDS.sort

#   sorted_words.each {|word| sorted_numbers << NUM_WORDS.index(word) }
#   sorted_numbers  
# end

##Problem 9

# def crunch(string)
#   array = string.chars
#   count = 0

#   loop do
#     break if count == array.length
#     if array[count] == array[count + 1]
#       array[count] = nil
#     end
#     count +=1 
#   end
#   array.compact.join
# end


##Problem 10

# def print_in_box(string='')
#   length = string.length
#   puts "+-" + ("-" * length) + "-+"
#   puts "| " + (" " * length) + " |"
#   puts "| " + string + " |"
#   puts "| " + (" " * length) + " |"
#   puts "+-" + ("-" * length) + "-+"
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

##Problem 11

#join will return a new string object