class Triangle
  attr_accessor :sideOne, :sideTwo, :sideThree
  
  def initialize (sideOne, sideTwo, sideThree)
   @sideOne = sideOne
   @sideTwo = sideTwo
   @sideThree = sideThree
  end
  
  def kind 
      if (sideOne + sideTwo) / 2 == sideThree
      return :equilateral
      elsif 
      sideOne != sideTwo && sideThree != sideTwo && sideOne != sideThree
      return :scalene
    else 
      return :isosceles
    end
  end
  
  class TriangleError < StandardError
  def message
    "This triangle is illegal"
end
end
end


# class Person
#   attr_accessor :partner, :name
 
#   def initialize(name)
#     @name = name
#   end
 
#   def get_married(person)
#     self.partner = person
#     if person.class != Person
#       begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end
#   end
 
#   class PartnerError < StandardError
#     def message
#       "you must give the get_married method an argument of an instance of the person class!"
#     end
#   end
# end
 
# beyonce = Person.new("Beyonce")
# beyonce.get_married("Jay-Z")
# puts beyonce.name