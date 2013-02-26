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

=begin
Specifying Access Control
Public, protected, or private - each can be used 2 ways.  with no arguements, they set teh default
access control of subsequently defined methods.

protected

  def method # will be protected
  end

  def method2 "will be protected"
  end

private

  def method3 "will be private"
  end

etc..

Or you can use them as arguements to teh access control functions-

public :method1, method4
private :method 3
=end

class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end
  private
  def debit(account, amount)
    account.balance -= amount
  end
  def credit(account, amount)
    account.balance += amount
  end
  public
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
end


savings = Account.new(100)
puts savings.balance
checking = Account.new(200)
puts checking.balance
trans = Transaction.new(checking, savings)
trans.transfer(100)

puts savings.balance, "   ", checking.balance

=begin

class Account
  attr_reader :cleared_balance # accessor method 'cleared_balance'
  protected :cleared_balance   # and make it protected
  def greater_balance_than(other)
    return @cleared_balance > other.cleared_balance
  end
end

b/c it's protected, it's only available within Account objects.  Three levels of protection,
public, protected, or private, now i see how proteced can be used ;).
=end





















































