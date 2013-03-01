=begin
sharing functionality helps to eliminate duplication in your code and makes it
easier to maintain b/c if you change it once it then is updated everywhere.

two different mechanisms for sharing are class-level inheritance and mixins.

=end


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

