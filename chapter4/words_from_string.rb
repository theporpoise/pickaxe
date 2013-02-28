
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

=begin
not necessary here, just trying to test the code itself.
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
=end
