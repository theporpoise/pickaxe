=begin
sharing functionality helps to eliminate duplication in your code and makes it
easier to maintain b/c if you change it once it then is updated everywhere.

two different mechanisms for sharing are class-level inheritance and mixins.

class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

class Child < Parent

end

c = Child.new
c.say_hello

p "The superclass of Child is #{Child.superclass}"
p "The superclass of Parent is #{Parent.superclass}"
p "The superclass of Object is #{Object.superclass}"
p "The superclass of BasicObject is #{BasicObject.superclass.inspect}"


=end
=begin
class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "Person named #{@name}"
  end
end

p = Person.new("Michael")
puts p

# in ruby on rails, you have subclassed ActionController when writing
# your own controller classes.


require 'gserver'
class LogServer < GServer
  def initialize
    super(12345)
  end
  def serve(client)
    #client.puts get_end_of_log_file
    client.puts "Welcome to this cool little server"
  end
private
  def get_end_of_log_file
    File.open("/var/log/system.log") do |log|
      log.seek(-1000, IO::SEEK_END)  #back up 1000 chars from EOF
      log.gets                       # ignore partial line
      log.read                       # and return rest
    end
  end
end

server = LogServer.new
server.start.join
=end
=begin
Modules provide a namespace and prevent name clashes
Modules support the mixin facility.

Module methods are called by preceding teh method name with the modules name
and then a period, like Module.

=end
=begin

module Debug
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def who_am_i?
    "#{self.class.name} (\##{self.object_id}): #{@name.to_s}"
  end
end
class Phonograph
  include Debug
end

class EightTrack
  include Debug
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

p ph.who_am_i?
p et.who_am_i?
p ph.name

=end
=begin
class Person
  include Comparable
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def to_s
    "#{@name}"
  end
  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

if p1 > p2
  puts "#{p1.name}'s name > #{p2.name}'s name"
end

puts "Sorted List"
puts [p1, p2, p3].sort
=end

=begin
# ruby collection class - array, hash, etc. - traverse, sort, etc.

# module enumerable is what does all those cool collection class things
# must define an iterator called each which returns the elements of your
#collection in turn.

p [1, 2, 3, 4, 5].inject(:+)
p ('a'..'m').inject(:+)


class VowelFinder
  include Enumerable
  def initialize(string)
    @string = string
  end
  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

vf = VowelFinder.new("the quick brown fox jumped up up up ")

p vf.inject(:+)
=end

=begin

module Summable
  def sum
    inject(:+)
  end
end
class Array
  include Summable
end

class Range
  include Summable
end

puts [1, 2, 3, 4, 50].sum
puts ('a'..'z').sum

=end

=begin
module Observable
  def observers
    @observer_list ||= []
  end
  def add_observer(obj)
    observers << obj
  end
  def notify_observers
    observers.each {|o| o.update }
  end
end

module Test
  State = {}
  def state=(value)
    State[object_id] = value
  end
  def state
    State[object_id]
  end
end

class Client
  include Test
end

c1 = Client.new
c2 = Client.new
p c1.state = 'cat'
p c2.state = 'dog'

=end

































