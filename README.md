# Library

### This is simple library structure, lets play a bit.

Library has to determine folowing requirements:

- [ ] Book: title, author
- [ ] Order: book, reader, date
- [ ] Reader: name, email, city, street, house
- [ ] Author: name, biography
- [ ] Library: books, orders, readers, authors

To create an **Author** use `Author.new` and pass the params to it:

    author1 = Author.new("Awesome author", "some bio")

If you want to see the **details** use method `to_s` or `info`:

    author1 = Author.new("Awesome author", "some bio").to_s

will print just a name of **Author**. Method `info` prints full information.

Use the same option to create a **Book** (metods `to_s` and `info are available`):

    book1 = Book.new("The First book", author1)    

To create a **Reader** you can define optionaly email, city, etc.:

    reader1 = Reader.new("John",
                        email: "e_mail@examle.com",
                        city: "City1",
                        street: "1st",
                        house: "10")

The **Order** can be created like this:
    
    order1 = Order.new(book1.to_s, reader1.to_s)

Okay it looks pretty nice, but we need a possibility to use our **Library**.

Library has to have folowing functionality:

- [ ] Who often takes the book    
- [ ] What is the most popular book
- [ ] How many people ordered one of the three most popular books
- [ ] Save all Library data to file(s)
- [ ] Get all Library data from file(s)

That`s really easy to do.

You can use `add_option` metod to pass each item into **Library**:

    library.add_author(author1.to_s)
    library.add_book(book1.to_s)
    library.add_reader(reader1.to_s)

Looks good but, what if we need to see what`s a popular book or bestsellers or Who`s the most active reader?. Easy to do by simply adding `popular_book` or `popular_reader` or `bestsellers` option:

    library.bestsellers
    library.popular_book
    library.popular_reader

And the last important thing is to load/save **Library** use method `load` or `save`:

    library.load
    library.save

That`s it guys, enjoy it :gem: