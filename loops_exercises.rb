# what does this return

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

puts x

# Returns the orignal array

puts "___________________________________"
# write a while loop that takes input from the user, performs the action, and stops when the user types stop

answer = ""
while answer != "STOP" do
  puts "Hi How are you?"
  ans = gets.chomp
  puts "do you want me to ask again?"
  answer = gets.chomp
end

puts "___________________________________"
# write a method that counts down from zero using recursion


def countdown(g)
  if g <= 0
    puts g
  else
    puts g
    countdown(g - 1)
  end
end

puts countdown(15)