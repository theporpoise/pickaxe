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
