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
                      house: "10").info
reader2 = Reader.new("Amanda",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10").info
reader3 = Reader.new("Kate",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10").info
reader4 = Reader.new("Ron",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10").info
reader5 = Reader.new("Christian",
                      email: "e_mail@examle.com",
                      city: "City1",
                      street: "1st",
                      house: "10").info

book1 = Book.new("First book", author1).to_s
book2 = Book.new("Second book", author1).to_s
book3 = Book.new("Third book", author1).to_s
book4 = Book.new("Fourth book", author1).to_s
book5 = Book.new("Fifth book", author1).to_s