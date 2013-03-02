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
