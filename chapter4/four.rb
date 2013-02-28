=begin
Containers, Blocks, and Iterators

Arrays:

=end

=begin
a = [ 3.14159, "pie", 99]
p a.class
p a.length
p a[0]
p a[1]
p a[2]
p a[3]

b = Array.new
p b.class
p b.length
b[0] = "second"
b[1] = "array"
p b

a = [1, 3, 5, 7, 9]
p a[-1]
p a[-2]
p a[-99]
=end
=begin
a = [1, 3, 5, 7, 9]
p a[1, 3]
p a[3, 1]
p a[-3, 2]
p "ranges:"
p a[1..3]
p a[1...3]
p a[3..3]
p a[-3..-1]

a[1] = 'bat'
a[-3] = 'cat'
a[3] = [9,8]
a[6] = 99
p a

a[1, 0] = ['steven', 'bob', 'alex']
p a
=end

=begin
a = [1, 3, 5, 7, 9]
a[2,2] = 'cat'
a[2,0] = 'dog'
a[1,1] = [9,8,7]
a[0..3] = []
#that's a cool way to get it to empty!
a[5..6] = 99, 98
p a
=end





















