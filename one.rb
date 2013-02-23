#song1 = Song.new("Ruby Tuesday")
#song2 = Song.new("Enveloped in Python")

puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
#puts sam.play(song)

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

a = [ 1, 'cat', 3.14 ] # array with three elements
puts "The first element is #{a[0]}"

a[2] = nil

puts "The array is now #{a.inspect}"

a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
puts a[0]
puts a[3]

a = %w{ ant bee cat dog elk }
puts a[0]
puts a[3]

inst_section = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion',
    'oboe' => 'woodwind',
    'trumpet' => 'brass',
    'violin' => 'string'
}

p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

histogram = Hash.new(0)
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']
# Symbols

# cool because you don't have to pre-declare and they are GUARANTEED to be unique

section = {
    cello: 'string',
    clarinet: 'woodwind',
    drum: 'percussion',
    oboe: 'woodwind',
    trumpet: 'brass',
    violin: 'string'
}

puts "An oboe is a #{section[:oboe]}"
























