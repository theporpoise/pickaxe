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

# Control Structures

=begin
puts "please enter a number"
count = gets.chomp().to_i
tries = 0

if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts "Enter a number"
end

while weight < 100 and num_pallets <= 30
  pallet = next_pallet()
  weight = += pallet.weight
  num_pallets +=1
end

while line = gets
  puts line.downcase
end

if radiation > 3000
  puts "Danger, Will Robinson"
end

puts "Danger, Will Robinson" if radiation > 3000

square = 2
while square < 1000
  square = square * square
end

square = 2
square = square * square while square < 1000
=end

# Regular Expressions
=begin

/Perl|Python/

/P(erl|ython)/

/ab+c/
# matches a string containing an a, one or more b's, and a c

/ab*c/
=end
# one a, one or more b's, c

=begin
\s - whitespace character

\d - digit

\w - any character in a typical word

. - almost any character

/\d\d:\d\d:\d\d/ # a time, such as 12:34:56
/Perl.*Python/  # Perl, zero or more other chars, then Python
/Perl Python/ # Perl, a space, and Python
/Perl *Python/ # Perl, zero or more spaces, and Python
/Perl +Python/ # Perl, one or more spaces, and Python
/Perl\s+Python/ # Perl, whitespace characters, then Python
/Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python

=~  the match operator, matches a string against a regular expression.  If the pattern is found
in the string it returns the starting position, otherwise, it returns nil.  This means it can be used
as the condition in an if whiel statement.

=end
line = "I'm learning Ruby, which is not Perl or Python or Python again"
if line =~ /Perl|Python/
  puts "Scripting Language mentioned: #{line}"
  puts line.sub(/Perl/, 'Ruby')
  puts line.gsub(/Python/, 'Ruby')
  puts #{line}
end

# Blocks and Iterators
=begin

{ puts "Hello" }

do
  club.enroll(person)
  person.socialize
end

greet { puts "Hi" }

verbose_greet("Dave", "Loyal customer" ) { puts "Hi" }
=end

def call_block
  puts "start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }

def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end

who_says_what { |person, phrase| puts "#{person} says #{phrase}" }
=begin

def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}


=end

animals = %w( ant bee cat dog elk ) # create an array
animals.each {|animal| puts animal } # iterate over the contents

[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "8" }
puts " "
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }

# Reading and 'Riting'
print "\n"
printf("Number: %10.6f,\nString: %s\n", 1.23, "hello")
=begin

line = gets
print line

while line = gets
  print line
end
=end

# Command-Line Arguements
# cmd_line.rb file
















































