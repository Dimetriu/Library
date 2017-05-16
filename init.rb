require_relative './lib/author.rb'
require_relative './lib/book.rb'
require_relative './lib/library.rb'
require_relative './lib/order.rb'
require_relative './lib/reader.rb'
require_relative './lib/person.rb'

author1 = Author.new("Awesome author", "some bio")

reader1 = Reader.new("John",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10")
reader2 = Reader.new("Amanda",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10")
reader3 = Reader.new("Kate",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10")
reader4 = Reader.new("Ron",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10")
reader5 = Reader.new("Christian",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10")

book1 = Book.new("First book", author1)
book2 = Book.new("Second book", author1)
book3 = Book.new("Third book", author1)
book4 = Book.new("Fourth book", author1)
book5 = Book.new("Fifth book", author1)

order1 = Order.new( book3.to_s, reader1.to_s )
order2 = Order.new( book3.to_s, reader4.to_s )
order3 = Order.new( book2.to_s, reader1.to_s )
order4 = Order.new( book4.to_s, reader3.to_s )
order5 = Order.new( book1.to_s, reader1.to_s )