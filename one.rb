song1 = Song.new("Ruby Tuesday")
song2 = Song.new("Enveloped in Python")

puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
puts sam.play(song)

def say_goodnight(name)
  result = "Good night, " + name
  return result
end

# Time for bed...
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")

puts "And good night, \nGrandma"

def again_goodnight(name)
  "Good night, #{name.capitalize}"
end

puts again_goodnight('Pa')
puts again_goodnight('uncle')



