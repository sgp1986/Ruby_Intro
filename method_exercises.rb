# print a greeting message using a method that takes a parameter and returns a string

def greetings(name)
  "Hello " + name + " whats up?"
end

puts greetings("Steve")

puts "___________________________"
# add the return value of the expressions below in comment

x = 2                         # => 2

puts x = 2                    # => nil

p name = "Joe"                # => "Joe"

four = "four"                 # => "four"

print something = "nothing"   # => "nothing"
puts ""
puts "___________________________"
# write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers

def multiply(a, b)
  a * b 
end 

puts multiply(10, 2)

puts "___________________________"
# run the following code

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
puts "still returns nil"

