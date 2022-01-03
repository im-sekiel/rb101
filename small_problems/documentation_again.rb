# Problem 1

# Locate the ruby documentation for methods File::path and File#path. How are they different?
# method ::path will return a string and #path will return the filename

#Problem 2

require 'date'

puts Date.civil               # => 1582-10-15     
puts Date.civil(2016)         # => 2016-01-01          
puts Date.civil(2016, 5)      # => 2016-05-01              
puts Date.civil(2016, 5, 13)  # => 2016-05-13

#At first glance, I thought Date.civil would be -4712-01-01, but the ::ITALY confused me

#Problem 3                  

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]

#Problem 4

a = [1, 4, 8, 11, 15, 19]
a.bsearch {|element| element > 8 }


#Problem 5

a = %w(a b c d e)
puts a.fetch(7)                      # => nil # I thought it was nil or Error, it was Error
puts a.fetch(7, 'beats me')          # => "beats me"
puts a.fetch(7) { |index| index**2 } # => 14 # Misread with 7 * 2 vs 7**2

#Problem 6

5.step(to: 10, by: 3) { |value| puts value } # => 5 & 8

#Problem 7

puts String.public_methods.inspect

# Wrong, puts s.public_methods(false).inspect

#problem 8

a = [5, 9, 3, 11]
puts a.min(2)

#Problem 9

#https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file
#Right answer: https://ruby-doc.org/stdlib-3.0.0/libdoc/psych/rdoc/Psych.html