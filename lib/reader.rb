require_relative 'person.rb'

class Reader < Person
  attr_accessor :name, 
                :email,
                :city,
                :street,
                :house

  def initialize(name, opts ={})
    super(name)
    @email  = opts[:email]
    @city   = opts[:city]
    @street = opts[:street]
    @house  = opts[:house]
  end

  def info
    p "#{name}"
    p "#{@email}"
    p "#{@city}"
    p "#{@street}"
    p "#{@house}"
  end
end