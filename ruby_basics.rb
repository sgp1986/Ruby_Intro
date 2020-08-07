# scopes

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a acessible here, in an inner scope?
  b = 5           # b is initialized in the inner scope
end 

puts a
puts b 