class Robot

attr_reader :name

  def initialize(name = 'AB123')
    @name = name
  end

  def reset

    alphabet = (0...2).map {('A' .. 'Z').to_a[rand(26)]}.join

  end

end
