# ask user for their name and print out greeting

puts "What is your name?"
name = gets.chomp

puts "Hello #{name}!"

puts "___________________________"
# ask the user for their age, tell them how old they will be in 10, 20, 30 years

puts "How old are you, #{name}?"
age = gets.chomp.to_i

puts "in 10 years, #{name} will be:"
puts age + 10
puts "in 20 years, #{name} will be:"
puts age + 20
puts "in 30 years, #{name} will be:"
puts age + 30

puts "___________________________"
# print the name 10 times

10.times { puts name }

puts "___________________________"
# modify the original question to ask for first name and last name separately then output their full name

puts "What is your first name?"
first_name = gets.chomp
puts "what is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{last_name}!"

puts "___________________________"
# run the following to see the output of x

x = 0
3.times do
  x += 1
end
puts x 

puts "___"
y=0
3.times do
  y += 1
  z = y 
end
puts z 