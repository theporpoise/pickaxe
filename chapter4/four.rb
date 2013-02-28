=begin
Containers, Blocks, and Iterators

Arrays:


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

creating a stack queue
stack = []
stack.push "red"
stack.push 'green'
stack.push 'blue'
p stack
puts stack.pop
puts stack.pop
puts stack.pop
p stack

=end

#push and shift to create a FIFO queue
queue = [1, 2, 3, 4, 5, 6]
queue.push "red"
queue.push "green"
puts queue.shift
puts queue.shift
p queue
p queue.shift
p queue



















