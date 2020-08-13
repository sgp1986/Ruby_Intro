# case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else 
  puts "a is neither 5 nor 6"
end 


# case refactored

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else 
    "a is neither 5 nor 6"
  end 

puts answer

# Case with argument

a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5 nor 6"
end 

