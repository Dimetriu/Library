require_relative 'person.rb'

class Author < Person
  attr_accessor :name, :biography

  def initialize(name, biography)
    super(name)
    @biography = biography
  end

  def to_s
  	"#{name}"
  end

  def info
    "#{name}, #{@biography}"
  end
end