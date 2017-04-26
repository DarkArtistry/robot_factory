class Robot
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def reset
alphabet = (0...2).map { ('A'..'Z').to_a[rand(26)] }.join
num1 = rand(9).to_s
num2 = rand(9).to_s
num3 = rand(9).to_s
@name = alphabet +num1 +num2 +num3
  end
end
