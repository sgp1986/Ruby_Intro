# add 2 strings together to return your first and last name in one string

puts "Steve" + " Price"

puts "___________________________"
# use modulo and division to take 4 digits and print the digit in each place

puts 4936 / 1000
puts 4936 % 1000 / 100
puts 4936 % 100 / 10
puts 4936 % 10

puts "___________________________"
# create a hash and print out the movie years

movies = { 
  movie1: 2000,
  movie2: 2001,
  movie3: 2002,
  movie4: 2003
}
movies.each { |m, k| puts k }

puts "___________________________"
# take the dates from the previous example and store them in an array, then output the years

years = movies.values

puts years

puts "___________________________"
# write out the factorial of numbers 5 6 and 7

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1

puts "___________________________"
# write out the squares of 3 float numbers and output the results 

puts 3.0 ** 2
puts 5.4 ** 2
puts 10.51 ** 2


