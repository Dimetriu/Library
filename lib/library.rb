require "yaml"

class Library
  attr_accessor :books,
                :orders,
                :readers,
                :authors

  def initialize
    @@library = [@books = [], @orders = [], @readers = [], @authors = []]
  end

  def load
    @@library = YAML.load_file("./yaml/library.yml") || 
    File.new("./yaml/library.yml", "w+")
  end

  def save
    File.open("./yaml/library.yml", "r+") do |f|
      f.write(@@library.to_yaml)
    end
  end

  def add_book(book)
    @books << book && !book.nil?
  end

  def add_order(order)
    @orders << order && !order.nil?
  end

  def add_reader(reader)
    @readers << reader && !reader.nil?
  end

  def add_author(author)
    @authors << author && !author.nil?
  end

  def popular_book
    group_book.uniq.max_by { |book| group_book.count(book) }
  end

  def popular_reader
    group_reader.uniq.max_by { |reader| group_reader.count(reader) }
  end

  def bestsellers
    result = group_reader.uniq.max_by(3) { |reader| group_reader.count(reader) }.size
    "Top three books were ordered by #{result} readers"
  end

  private

  def group_book
    @orders.group_by(&:book).map { |key, value| [key, value.count] } 
  end

  def group_reader
    @orders.group_by(&:reader).map { |key, value| [key, value.count] }
  end
end