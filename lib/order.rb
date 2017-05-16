require_relative 'book.rb'
require_relative 'reader.rb'

class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader)
    date    = Time.new
    @book   = book
    @reader = reader
    @date   = date.strftime("%D")
  end

  def info
    "#{@book} was ordered by #{@reader} on #{@date}"
  end
end