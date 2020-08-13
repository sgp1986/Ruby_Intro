# are the following expressions true or false

(32 * 4) >= 129                                               # => false
false != !true                                                # => false
true == 4                                                     # => false
false == (847 == '874')                                       # => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false   # => (not true || (true || true) ) || false = (false || true) || false = true || false = true

puts "___________________________________"
# write a method that takes a string as an argument, then return a new all caps version of the string if the string is longer than 10 characters

def caps(string)
  if string.length >= 10
    string.upcase
  else
    string
  end
end

puts caps("Hello world")
puts caps("hi")

puts "___________________________________"
# write a program that takes a number from the user between 0 and 100 and reports back if the number is between 0 and 50, 51 and 100, or above 100

puts "Enter a number from 0 to 100:"
number = gets.chomp.to_i

case 
  when number >= 0 && number <= 50
    puts "This number is between 0 and 50"
  when number >= 51 && number <= 100
    puts "This number is between 51 and 100"
  else
    puts "This number is above 100"
end

puts "___________________________________"
# run each example to see the result

puts "code 1"                               # => false
"4" == 4 ? puts("true") : puts("false")   

puts "code 2"                               # => "did you get it right?"
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "did you get it right?"
else
  puts "did you?"
end

puts "code 3"                               # => "alright now"
a = 9
b = 10
if (b + 1) <= (a)
  puts "alright"
elsif (b + 1) >= (a)
  puts "alright now"
else
  puts "alrighty"
end

puts "___________________________________"
