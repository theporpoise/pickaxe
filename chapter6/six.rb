

=begin
# STandard Types - chapter 6 - stuff i prolly know :)

num = 81
6.times do
  puts "#{num.class}: #{num}"
  num *=  num
end

p 123456
p 0d123456
p 123_456
p -543
p 0xaabb
p 0377
p -0b10_1010
p 123_456_789

p Rational(3, 4) * Rational(2, 3)
p Rational("3/4") * Rational("2/3")

p Complex(1, 2) * Complex(3, 4)
p Complex("1+2i") * Complex("3+4i")
=end
=begin


#all numbers are objects and respond to a variety of messages, so num.abs, not abs(num)

 f = File.open('some_file.txt')

f.each do |line|
  v1, v2 = line.split
  puts Integer(v1) + Integer(v2)
end

p (1 + 2).class
p (1 + 2.0).class
p (1.0 + 2).class
p (1.0 + Complex(1, 2)).class
p (1 + Rational(2,3)).class
p (1.0 + Rational(2,3)).class

p 1 / 2.0
p 1 / 2.0
p 1/ 2

require 'mathn'
p 22/7
p Complex::I * Complex::I
=end

=begin
#Looping using numbers
# class Numeric includes the numbers (1, 2, 3) and has methods like .times, .upto,
# .downto. and .step

3.times { puts "X" }
1.upto(5) { |i| print i, " " }
99.downto(95) {|i| print i, " " }
50.step(80, 5) { |i| print i, " " }

puts "\n\n"
10.downto(7).with_index {|num, index| puts "#{index}: #{num}"}
=end

=begin
puts 'escape using "\\"'
puts 'That\'s right'

puts "Seconds/day: #{24*60*60}"
puts "#{'Ho! ' * 3}Merry Christmas"
puts "This is line #$."

puts "now is #{ def the(a)
                  'the ' + a
                end
                the('time')
                } for all good coders..."

# you can make your own string delimeters using %q and %Q

p %q/general single-quoted string/
p %Q!general double-quoted string!
p %Q{Seconds/year: #{24*60*60*365}}

p %!another general string!
p %{Seconds/100 years: #{24*60*60*365*100}}

string = <<END_OF_STRING
The body of the string
is the input lines up to
one starting with the same
text that followed the '<<'
END_OF_STRING

p string

a, b = <<-String1, <<-String2
  Concat
  String1
    enate
    String2

p a
p b
=end

=begin

##put this at beginning of file to change encoding - #encoding: utf-8
plain_string = "dog"
puts "Encoding of #{plain_string.inspect} is #{plain_string.encoding}"

#Strin is prolly largest build-in Ruby class, with 100 standard methods.

Song = Struct.new(:title, :name, :length)
File.open("songdata.txt") do |song_file|
  songs = []
  song_file.each do |line|
    #puts line
    file_name, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    mins, sec = length.scan(/\d+/)
    songs << Song.new(title, name, mins.to_i*60 + sec.to_i)
  end
  puts songs
end
=end

a =  (1..10).to_a
b =  'a'..'z'
c = 0..."cat".length
d = ('bar'..'bat').to_a
enum = ('bar'..'bat').to_enum


p a, b, c, d, enum, enum.next, enum.next

digits = 0..9
p digits.include?(5)
p digits.min
p digits.max
p digits.reject { |i| i < 5 }
p digits.inject(:+)




























