class Robot
<<<<<<< HEAD
  attr_reader :name
=======

  attr_accessor :name
  @@name = []
>>>>>>> be587ffc56f14838f2dfd2f5b9fef1a9c2b408f9

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
