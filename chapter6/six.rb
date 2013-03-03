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

#Looping using numbers
# class Numeric includes the numbers (1, 2, 3) and has methods like .times, .upto,
# .downto. and .step

3.times { puts "X" }
1.upto(5) { |i| print i, " " }
99.downto(95) {|i| print i, " " }
50.step(80, 5) { |i| print i, " " }


