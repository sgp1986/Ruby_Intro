# check if the numbe 3 appears in the array

arr1 = [1, 3, 5, 7, 9, 11]

puts arr1.include?(3)

puts "___________________________________"
# what will the following program return? What is the value of arr

arr2 = ["b", "a"]
arr2 = arr2.product(Array(1..3))       # arr2 = ["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr2.first.delete(arr2.first.last)     # arr2 = ["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
                                      # => 1 ****** returns the element deleted
arr3 = ["b", "a"]
arr3 = arr3.product([Array(1..3)])     # arr3 = [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr3.first.delete(arr3.first.last)     # arr3 = [["b"], ["a", [1, 2, 3]]]
                                      # => [1, 2, 3] **** returns the element(array) deleted
puts "___________________________________"
# How do you return the word example from the following array?

arr4 = [["test", "hello", "world"], ["example", "mem"]]

puts arr4.last.first

puts "___________________________________"
# What does each method return in the following example

arr5 = [15, 7, 18, 5, 12, 8, 5, 1]

arr5.index(5)       # => 3

# arr5.index[5]       # => error- undefined method '[]'

arr5[5]             # => 8

puts "___________________________________"
# what is the value of a, b, c in the following program

string = "Welcome to America"

a = string[6]       # a = "e"
b = string[11]      # b = "A"
c = string[19]      # c = nil

puts "___________________________________"
# run the following code and fix the error

names = ['bob', 'joe', 'susan', 'margaret']
# ERROR names['margaret'] = 'jody'
# FIX
names[3] = 'jody'

puts "___________________________________"
# use the each_with_index method to iterate through an array of your creation that prints each index and value of the array

arr6 = [10, 20, 30, 40, 50]

arr6.each_with_index { |v, i| puts "#{i + 1}. #{v}" }

puts "___________________________________"
# write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by 2
# Should be 2 arrays at the end, the original and the new one. print both with p

array = [1, 2, 3, 4, 5]
new_array = []

array.each do |n|
  new_array << n + 2
end
                      # OR new_array = arr.map { |n| n + 2 } I WAS CLOSE I PUT EACH
p array
p new_array