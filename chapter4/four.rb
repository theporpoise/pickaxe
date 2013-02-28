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
=begin
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
=end
=begin
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
=end
=begin

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
=end
=begin
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

=end

=begin
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
=end

=begin
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
=end
=begin

[1, 3, 5, 7, 9].each{|i| puts i}

a = ["H", "A", "L"].collect {|x| x.succ }
puts a
a = ["H", "A", "L"].map {|x| x.succ }
puts a


f = File.open("../Chapter3/data.csv")
f.each {|line| puts line }
f.close
=end

=begin
f = File.open("../Chapter3/data.csv")
f.each_with_index {|line, index| puts "Line #{index} is: #{line}"}
f.close
=end

=begin
p [1, 3, 5, 7].inject(2) {|sum, element| sum+element}
p [1, 3, 5, 7].inject(1) {|product, element| product*element}

p [1,3,5,7].inject(:+)
=end


=begin
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

=end


















































