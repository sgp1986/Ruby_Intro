# use the .each method of Array to iterate over the array and print out each value

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |i| puts i }

puts "_______________________________"
# same as above but only greater than 5

arr.each do |i|
  if i > 5
    puts i
  end
end

puts "_______________________________"
# using same array, use select to extract all odd numbers into new array

new_arr = arr.select { |i| i % 2 != 0 }

p new_arr

puts "_______________________________"
# append 11 to the end of the original array, prepend 0 to the beginning

arr.push(11)
p arr

arr.unshift(0)
p arr

puts "_______________________________"
#get rid of 11 and append a 3

arr.delete(11)
p arr

arr << 3
p arr

puts "_______________________________"
# get rid of duplicates

arr.uniq!
p arr

puts "_______________________________"
# Whats the difference between array and hash

# array is a list, hash is list of k-v pairs for referencing

puts "_______________________________"
# create a hash with one k-v pair using both syntax styles

hasha = { key: "value" }
hashb = { :key => "value" }

puts "_______________________________"
# get the value of :b, add e:5, remove all k:v pairs that are less than 3.5

h = { a:1, b:2, c:3, d:4 }

p h[:b]

h[:e] = 5

p h

h.delete_if { |k, v| v < 3.5 }
p h

puts "_______________________________"
# Can hash values be array? Can you have an array of hashes?

# Yes. h = {a: [1, 2, 3] }

# Yes. h = [{a: 1}, {a: 2}, {a: 3}]

puts "_______________________________"
# write a program that copies the info fromt he array into the empty hash that applies to the correct person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data.first.first
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data.first.last

contacts["Sally Johnson"][:email] = contact_data.last.first
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data.last.last

puts contacts

puts "_______________________________"
# using the hash from the previous exercise, access Joe's email and Sally's phone numbers

p "Joe's email is #{contacts["Joe Smith"][:email]}"
p "Sally's number is #{contacts["Sally Johnson"][:phone]}"

puts "_______________________________"
# use rubys array method .delete_if and string method .start_with? to delete all words that start with s

array = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

new_array = array.delete_if { |word| word.start_with?("s") }

p new_array

newer_array = array.delete_if { |word| word.start_with?("s", "w") }

p newer_array

puts "_______________________________"
# Turn this array into a new array consisting of strings with one word
# look into array's map and flatten and string's split

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
result =a.map { |word| word.split }

result = result.flatten

p result

puts "_______________________________"
# what will the following program output

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# => these hashes are the same

puts "_______________________________"
# programmatically loop or iterate over the contacts hash and populate the associated date from contact_data array

joe_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contact = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contact.each do |name, hash|
  fields.each do |field|
    hash[field] = joe_data.shift
  end
end

p contact

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts