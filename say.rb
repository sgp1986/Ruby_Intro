def say(words='hello')
  puts words + '.'
end 

say 
say "hi"
say("how are you")
say("I'm fine")

def some_method(number)
  number = 7
end 

a = 5
some_method(a)
puts a

puts "hi"
p "hi"

a = [1, 2, 3]

def mutate(array)
  array.pop
end 

p "before mutate method: #{a}"
mutate(a)
p "after mutate method: #{a}"

b = [1, 2, 3]

def no_mutate(array)
  array.last
end 

p "before no_mutate method: #{b}"
no_mutate(b)
p "after no_mutate method: #{b}"