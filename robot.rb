class Robot

  attr_accessor :name
  @@name = []

  def initialize
    @name = reset
    namechecker
    @@name << @name
  end

  def namechecker
    if @@name.include? @name
      @name = reset
      namechecker
    end
  end

  def reset
    alphabet = (0...2).map { ('A'..'Z').to_a[rand(26)] }.join
    num1 = rand(9).to_s
    num2 = rand(9).to_s
    num3 = rand(9).to_s
    alphabet +num1 +num2 +num3
  end


end
