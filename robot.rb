# class Robot
#   attr_accessor :name
#   @@name = []
#
#
#   def initialize
#     @name = reset
#     namechecker
#     @@name << @name
#   end
#
#   def namechecker
#     if @@name.include? @name
#       @name = reset
#       namechecker
#     end
#   end
#
#   def reset
#     alphabet = (0...2).map { ('A'..'Z').to_a[rand(26)] }.join
#     num1 = rand(9).to_s
#     num2 = rand(9).to_s
#     num3 = rand(9).to_s
#     alphabet +num1 +num2 +num3
#   end
#
#
# end

require 'pry'

# this is the class of Robot
class Robot
  attr_reader :name

  @@all_robots = []

  def initialize
    loop do
      until check_collission
        @name = reset
        @@all_robots << @name
      end
      break
    end
  end

  def check_collission
    @@all_robots.include? @name
  end

  def reset
    @name = name_randomizer
  end

  def random_str
    alphabet = ('A'..'Z').to_a
    random_index = rand(alphabet.count)
    alphabet[random_index]
  end

  def name_randomizer
    random_name = ''
    2.times do
      random_name += random_str
    end

    3.times do
      random_name += rand(9).to_s
    end
    random_name
  end
end
