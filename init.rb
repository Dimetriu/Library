require_relative './lib/author.rb'
require_relative './lib/book.rb'
require_relative './lib/library.rb'
require_relative './lib/order.rb'
require_relative './lib/reader.rb'
require_relative './lib/person.rb'

author1 = Author.new("Awesome author", "some bio").to_s
author2 = Author.new("Awesome author2", "some bio").to_s

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

book1 = Book.new("The First book", author1)
book2 = Book.new("The Second book", author1)
book3 = Book.new("The Third book", author1)
book4 = Book.new("The Fourth book", author1)
book5 = Book.new("The Fifth book", author1)

order1 = Order.new(book3.to_s, reader1.to_s)
order2 = Order.new(book3.to_s, reader4.to_s)
order3 = Order.new(book2.to_s, reader1.to_s)
order4 = Order.new(book4.to_s, reader3.to_s)
order5 = Order.new(book1.to_s, reader1.to_s)

library = Library.new

library.add_author(author1.to_s)
library.add_author(author2.to_s)

library.add_book(book1.to_s)
library.add_book(book2.to_s)
library.add_book(book3.to_s)
library.add_book(book4.to_s)
library.add_book(book5.to_s)

library.add_reader(reader1.to_s)
library.add_reader(reader2.to_s)
library.add_reader(reader3.to_s)
library.add_reader(reader4.to_s)
library.add_reader(reader5.to_s)

library.add_order(order1)
library.add_order(order2)
library.add_order(order3)
library.add_order(order4)
library.add_order(order5)

p library.popular_book