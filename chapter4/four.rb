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

#push and shift to create a FIFO queue
queue = [1, 2, 3, 4, 5, 6]
queue.push "red"
queue.push "green"
puts queue.shift
puts queue.shift
p queue
p queue.shift
p queue


p queue.first(40)
p queue.last(1)
h = {
    dog: 'canine',
    cat: 'feline',
    donkey: 'asinine'
}

p h.length
p h[:dog]
p h[:cow] = 'bovine'
p h[:twelve] = 'dodecine'
h[:cat] = 99
p h

#Ruby remembers the order you add things to a hash

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

#p words_from_string("But I didn't inhale, he said (emphaticaly)")

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end
#p count_frequency(words_from_string("But I didn't inhale, he said (emphatically)"))
#p count_frequency(words_from_string("Sparky the cat sat on the mat"))

raw_text = File.read("para.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)


for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end


#p sorted
top_five.each { |word, count| puts "#{word}: #{count}" }
sum = 0.0
some_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
some_array.each do |value|
  sum+= value
  puts value / sum
end
sum = 0.0
some_array.each_index {|i| some_array[i] *= 3}
p some_array

some_array.each do |value|
  sum+= value
  puts value / sum
end


sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end
puts sum

sum1 = 0
[1, 2, 3, 4].each {|value| sum1 += (value*value)}
puts sum1

value = "some shape"
[1, 2].each {|value| puts value}
puts value

square = "something else"
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value
  sum += square
end
puts sum
puts square

def three_times
  yield
  yield
  yield
end
three_times {puts "Hello"}

def fib_up_to(max)
  i1, i2 = 1, 1 #parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end
fib_up_to(1000) {|f| print f, ","}

class Array
  def find
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end
puts " "
puts [1, 3, 5, 7, 9].find {|v| v*v > 30 }

[1, 3, 5, 7, 9].each{|i| puts i}

a = ["H", "A", "L"].collect {|x| x.succ }
puts a
a = ["H", "A", "L"].map {|x| x.succ }
puts a


f = File.open("../Chapter3/data.csv")
f.each {|line| puts line }
f.close

f = File.open("../Chapter3/data.csv")
f.each_with_index {|line, index| puts "Line #{index} is: #{line}"}
f.close

p [1, 3, 5, 7].inject(2) {|sum, element| sum+element}
p [1, 3, 5, 7].inject(1) {|product, element| product*element}

p [1,3,5,7].inject(:+)


a = [1, 3, 'cat']
h = {dog: "canine", fox: "vulpine"}

enum_a = a.to_enum
enum_h = h.enum_for

p enum_a.next
p enum_h.next
p enum_a.next
p enum_h.next

a = [1, 3, "bigcat"]
enum_a = a.each
p enum_a.next
p enum_a.next

short_enum = (1..26).to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end


result = []
[ 'a', 'b', 'c'].each_with_index {|item, index| result << [item, index]}
p result

resulter = []
"cat".each_char.each_with_index {|item, index| resulter << [item, index] }
p resulter

resultery = []
"cat".each_char.with_index {|item, index| resultery << [item, index] }
p resultery

enum = "cat".enum_for(:each_char)
p enum.to_a
final = []
enum.with_index {|item, index| final << [item, index] }
p final
enum_good = (1..10).enum_for(:each_slice, 3)
p enum_good.to_a

triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

5.times { puts triangular_numbers.next }

p triangular_numbers.first(5)

# count and select will try to read the whole enumeration before returning
# a result

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) {|val| val % 10 == 0}.first(5)




class Enumerator
  def infinite_select(&block)
    Enumerator.new do |yielder|
      self.each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p triangular_numbers
  .infinite_select {|val| val % 10 ==0 }
  .infinite_select {|val| val.to_s =~ /3/ }
  .first(10)

blocks are often used as targets of iterators.  they are cool filters for looping
methods for instance.



class File
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close()
  end
end

File.open_and_process("../Chapter3/data.csv", "r") do |file|
  while line = file.gets
    puts line
  end
end

# shifts the responsibility of closing an open file from the user of
# file objects back to file objects themselves.

class File
  def self.my_open(*args)
    if block_given?
      result = yield file
      file.close
    end
    return result
  end
end
=end

=begin
# blocks are like anonymous methods, but there's more to them than that.  blocks
# can be objects, stored in variables, passed around, and invoked later

# objects get assigned to object class Proc when pased with &prefixedvariable

class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(99)

# a call method on a proc object invokes the code in the original block
# this a great way to implement call backs, dispatch tables, and so on.

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param} " }
bo.call(99)
bo.call("catfishery")
# two built in methods convert a block to an object - lambda and Proc.new take
# a block and return an object of class Proc.

bo = lambda { |param| puts "What up #{param}" }
bo.call(99)
bo.call("caterpillar")

rebo = Proc.new { |allan| puts "Who daq #{allan} now fool" }
rebo.call("Allan")
=end

=begin
def n_times(thing)
  lambda { |n| thing * n }
end

p1 = n_times(23)
p p1.call(3)
p p1.call(4)

p2 = n_times("Hello ")
p p2.call(3)

# effectively, the block gets created when called and saves the parameters
# used when it was created.

def power_proc_generator
  value = 1
  lambda { value += value }
end
power_proc = power_proc_generator
p power_proc.call
p power_proc.call
p power_proc.call

=end

=begin
# 3 ways to create block objects, lambda, Proc.new, and ->

proc1 = -> arg { puts "In proc1 with #{arg}" }
proc2 = -> arg1, arg2 { puts "In proc2 with #{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) {puts "In proc3 with #{arg1} and #{arg2}" }

proc1.call "ant"
proc2.call "bee", "hive"
proc3.call "dog", "poodle"

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 3,
        -> { puts "#{val} is small" },
        -> { puts "#{val} is big" }
end
=end

=begin

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0
my_while -> {a < 3} do
  puts a
  a += 1
end
=end


=begin
proc1 = lambda do |a, *b, &block|
  puts "a = #{a.inspect}"
  puts "b = #{b.inspect}"
  block.call
end

proc1.call(1, 2, 3, 4) { puts "in block1"}

proc2 = -> a, *b, &block do
  puts "a = #{a.inspect}"
  puts "hello = #{b.inspect}"
  block.call
end

proc2.call('cat', 'dog', 'mouse', 'traffic') {puts "the block block"}


containers, blocks and iterators are core concepts in ruby.  You will write less looping
constructs and instead write classes that support iteration over their contents.

blocks are also closures - which methods are not, so they are more versatile!

=end










































