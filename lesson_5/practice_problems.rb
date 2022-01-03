#Problem 1
arr = ['10', '11', '9', '7', '8']

def sort(array)
  array.sort {|a, b| b.to_i <=> a.to_i}
end

sort(arr)


#Problem 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

def sort_by_yr(hash)
  hash.sort {|a, b| a[:published].to_i <=> b[:published].to_i}
end

sort_by_yr(books)


#Problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

arr1[2][1][3]
arr2[1][:third][0]
arr3[2][:third][0][0]
hsh1['b'][1]
hsh2[:third].keys.first


#Problem 4
arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1[1][1] = 4
arr2[2] = 4
hsh1[:first][2][0] = 4
hsh2[['a']][:a][2] = 4


#Problem 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def sum_male(hash)
  sum = 0
  hash.each_key do |key|
    person = hash[key]
    sum += person["age"] if person["gender"] == "male"
  end
  sum
end

sum_male(munsters)


#Problem 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def print(hash)
  hash.each_key do |key|
    in_hash = hash[key]
    age = in_hash["age"]
    gender = in_hash["gender"]
    puts "#{key} is a #{age}-year-old #{gender}"
  end
end


#Problem 7
#=> [4, [3, 8]]


#Problem 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

def vowels(hash)
  hash.each do |key, value|
    value.each do |element|
      element.each_char do |char|
        case char
        when 'a' then puts char
        when 'e' then puts char
        when 'i' then puts char
        when 'o' then puts char
        when 'u' then puts char
        end
      end
    end
  end
end


#Problem 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

def ordered(array)
  array.map {|sub| sub.sort {|a, b| b <=> a}}
end

ordered(arr)


#Problem 10
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

def increment(array)
  array.map do |hsh|
    new_hash = {}
    hsh.each {|key, value| new_hash[key] = value + 1}
    new_hash
  end
end

increment(arr)


#Problem 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

def multiple_three(array)
  array.map do |arrayy|
    arrayy.select do |element|
      element % 3 == 0
    end
  end
end

multiple_three(arr)


#Problem 12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

def to_hash(array)
  hash = {}
  array.each {|array| hash[array[0]] = array[1]}
  hash
end

to_hash(arr)


#Problem 13
arr = [[1, 6, 9], [1, 4, 9], [1, 6, 7], [1, 8, 3]]

def sort_odd(array)
  array.sort do |array1, array2|
    array1[-1] <=> array2[-1]
  end
end

sort_odd(arr)


#Problem 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def color_sizes(hsh)
  hsh.map do |_, value|
    food = value[:type]
    case food
    when 'fruit'
      value[:colors].map {|element| element.capitalize}
    when 'vegetable'
      value[:size].upcase
    end
  end
end

color_sizes(hsh)


#Problem 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# def even_int(arr)
#   arr.map do |hsh|
#     new_hsh = {}
#     hsh.each do |key, value|
#       sum = 0
#       value.each {|int| sum +=1 if int.even?}
#       new_hsh[key] = value if sum == value.length
#     end
#     new_hsh
#   end
# end
##### Realized this is the wrong solution because all arrays in the hash must be even
##### This solution allows hashes where the array isn't even to exist
##### Came to this realization when I saw the solution/result was different from mine

def even_int(arr)
  arr.select do |hsh|
    hsh.all? do |key, value|
      value.all? {|element| element.even?}
    end
  end
end

even_int(arr)


#Problem 16
HEX = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']

def create_uuid()
  uuid = ''
  1.upto(32) do |int|
    uuid << HEX.sample
    case int
    when 8
      uuid << '-'
    when 12
      uuid << '-'
    when 16
      uuid << '-'
    when 20
      uuid << '-'
    end
  end
  uuid
end

create_uuid