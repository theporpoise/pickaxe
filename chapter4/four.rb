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
=begin
for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end
=end
#p sorted
top_five.each { |word, count| puts "#{word}: #{count}" }
















