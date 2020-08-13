# write a program that checks if the sequence "lab" exists in the following strings and prints the matches out

array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

array.each do |word|
  if /lab/ =~ word.downcase
    puts word
  end
end

puts "___________________________"
# what will this program print to the screen? what will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# nothing printed, the block is not activated with the .call method
# => proc object / nil

p execute

puts "___________________________"
# what is exception handling and what problem does it solve

# entered into the program to manage errors without the error breaking the program
# begin, rescue - print out message if error, end

#offical answer: Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the error by changing the flow of control without exiting the program entirely.

puts "___________________________"
# modify the code in exercise 2 to make the block execute properly

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

puts "___________________________"
# Why does this code give us an error

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# ans: The method parameter is missing the &