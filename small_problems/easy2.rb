#Problem 1
age = rand(20..200)
puts "Teddy is #{age} years old!"

#Problem 2
def room_area
  puts "=> Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "=> Enter the width of the room in meters:"
  width = gets.chomp.to_f
  area_meters = length * width
  area_feet = area_meters * 10.7639

  puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"
end

#Problem 3 
def calc_tip 
  print "What is the bill? "
  bill = gets.chomp
  print "What is the tip percentage? "
  tip_perc = gets.chomp

  tip = (tip_perc.to_f / 100.00) * bill.to_f
  total = bill.to_f + tip

  puts "The tip is #{tip}"
  puts "The total is #{total}"
end

#Problem 4
def years_to_retire
  print "What is your age? "
  age = gets.chomp.to_i
  print "At what age would you like to retire? "
  retirement = gets.chomp.to_i

  date = Time.now
  current_year = date.year.to_i

  years_to_go = retirement - age
  retirement_year = current_year + years_to_go

  puts "It's #{current_year}. You will retire in #{retirement_year}"
  puts "You have only #{years_to_go} years of work to go!"
end

#Problem 5
def ask_name 
  print "What is your name? "
  name = gets.chomp

  case name
    when "#{name.chop}!"
      puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
    else
      puts "Hello #{name}."
  end
end

#Problem 6
#(1..99).each {|i| puts i if i.odd? }

#Problem 7
#(1..99).each {|i| puts i if i.even? }

#Problem 8
def sum_or_product
  puts ">> Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  input = gets.chomp

  case input
  when 's'
    sum = (1..num).reduce(:+)
    puts "The sum of the integers betwen 1 and #{num} is #{sum}"
  when 'p'
    product = (1..num).reduce(:*)
    puts "The product of the integers betwen 1 and #{num} is #{product}"
  else
    puts "?"
  end
end

#Problem 9
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#It prints out BOB, for both of them.
#The reason being is because name and save_name are both pointing to an address that has
#"Bob" saved, upcase! then mutates the caller, it modifies the original object permanently. 

#Problem 10
# array2 => ["Moe", "Larry", "Curly", "Shemp", "Harpo", "Chico", "Groucho", "Zeppo"]

#Further Exploration
#To avoid this, instead of using the each method, you can use the #map method which will
#output a new array
# => I was wrong, you would have to use the dup method

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
puts array1.object_id
array1.map { |value| array2 << value.dup }

array2.map { |value| value.upcase! if value.start_with?('C', 'S') }

array1.each { |value| puts "Array1_value: #{value}; Object ID: #{value.object_id}" }
array2.each { |value| puts "Array2_value: #{value}; Object ID: #{value.object_id}" }

puts array1.object_id
puts array2.object_id