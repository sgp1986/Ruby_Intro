# take the following hash and use select to gather only immediate family members names into a new array

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family = family.select do |rel, name| 
  rel == :sisters || rel == :brothers
end

fam_arr = immediate_family.values.flatten

p fam_arr.sort    # added sort for fun

puts "___________________________________"
#write a program that uses both merge and merge! and illustrates the difference

# ans: merge! will combine two hashes. merge will create a new hash from the 2

# merge!

hash1 = { a: 1, b: 2 }
hash2 = { c: 3, d: 4 }

hash1.merge!(hash2)

hash3 = { e: 5, f: 6 }
hash4 = { g: 7, h: 8 }

hash3.merge(hash4)

p hash1
p hash3

puts "___________________________________"
# using ruby's built in hash methods, write a program that loops through a hash and prints all the keys.
# then print all the values. then print both

hash5 = { first: "1st", second: "2nd", third: "3rd" }

hash5.each_key { |k| puts k}
hash5.each_value { |v| puts v }
hash5.each { |k, v| puts "here are both #{k} and #{v}" }

puts "___________________________________"
# How do you access the name of the person in the following hash

person = {name: "Bob", occupation: "web developer", hobbies: "painting" }

puts person[:name]

puts "___________________________________"
# write a method that can check if a hash contains a specific value

hash6 = { key1: "value 1", key2: "value 2", key3: "specific value" }

p hash6.has_value?("specific value")

puts "___________________________________"
# What is the difference between these two hashes

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# my_hash uses a symbol x as the key, my_hash2 uses the value of the variable x as the key

puts "___________________________________"
# What is the exception from this error:

# NoMethodError: undefined method `keys' for Array

#A. We're missing keys in an array variable.

#B. There is no method called keys for Array objects.

#C. keys is an Array object, but it hasn't been defined yet.

#D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# ANSWER: B

puts "___________________________________"
# Take this array and print out groups of words that are anagrams

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# need to iterate over the array
#need to sort words in alphabetical order

result = {}                         # creates the new hash to add in the keys: values

words.each do |word|
  key = word.split('').sort.join    # split('')- splits string into each character. sort- sorts it alphabetically. join- joins it back into one string. key = - creates a key from the new joined string
  if result.has_key?(key)           # checks if the new joined string key matches a key already created
    result[key].push(word)          # if it does, adds the word to that key's value array
  else
    result[key] = [word]            # if it doesnt, creates key from that word and adds the word to that value array
  end
end

result.each_value do |v|            # for each value, prints out the separator lines and the value arrays
  puts "------"
  p v
end
