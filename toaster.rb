require_relative 'robot'
require 'pry'
# This is the class of Toaster

class Toaster < Robot

def initialize(brand)
  super()
  @brand = brand
end

end

binding.pry
