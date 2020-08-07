puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello #{first_name} #{last_name}!"

puts "How old are you, #{first_name}?"
age = gets.chomp.to_i

puts "In 10 years, you will be:"
puts age + 10

10.times {puts first_name}

