class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # ---- getter method ---- #
  # def name
  #   return @name
  # end

  # ---- setter method ---- #
  # def name=(name)
  #   @name = name
  # end
end

p = Person.new('L. Ron')
puts p.name
p.name = "Kayley"
puts p.name