class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

book = BookInStock.new("isbn1", 33.8)

=begin
b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")
p b1
p b2
p b3
puts b1
puts b2
puts b3
=end

=begin

# puts writes strings to the standard output, so when you puts an object it simply writes
# the name of the object's class, followed bya  colon, and the objects uniue identifier
# and it sticks that inside of #<> lol, that simple.  this is the default to_s method
# that you can then program to do something useful!  instance variables are assigned
# to the object and are available to all methods of that object.  'local' variables
# are variables like parameters which disappear quickly.  instance variables stay with
# the instance :).  local is more temporary than instance.  local is a very specific place
# instance is a area of places :)  when you define the to_s method  it also affects p
=end

=begin
# Objects and Attributes
book = BookInStock.new("isbn10", 12.34)
puts "ISBN  = #{book.isbn}"
puts "Price = #{book.price}"


puts "moving on to writable attributes"
# Writable Attributes
abook1 = BookInStock.new("isbn100", 33.8)
puts "ISBN    = #{abook1.isbn}"
puts "Price   = #{abook1.price}"
abook1.price = abook1.price * 0.75  # discount price
puts "New Price = #{abook1.price}"
=end

=begin
#Virtual Attributes
puts "Virtual Attributes"
puts " Price          = #{book.price}"
puts " Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "#{book.price}"
puts "#{book.price_in_cents}"
=end

# Attributes, Instance Variables, and Methods / Classes working iwth other classes

=begin
class CsvReader
  def initialize
    @books_in_stock = []
  end
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end
  def total_value_in_stock

  end
  def number_of_each_isbn

  end
end
=end

=begin
ruby has 3 states of access control, public methods, protected methods, and private methods.  public
is everyone, protected is just the class and subclasses, private is only the object itself.
control the methods, and you control the object - control access to the methods and you
control access to the object.  this is important for this like database objects :) as i've
seen in web applications :)
=end


































