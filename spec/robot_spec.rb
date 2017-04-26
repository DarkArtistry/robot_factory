# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of
# two uppercase letters followed by three digits, such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings, which
# means that their name gets wiped. The next time you ask, it will respond with
# a new random name.

# The names must be random: they should not follow a predictable sequence.
# Random names means a risk of collisions. Your solution should not allow the
# use of the same name twice when avoidable. In some exercism language tracks
# there are tests to ensure that the same name is never used twice.

require_relative '../robot'

describe Robot do
  before(:context) do
    @r1 = Robot.new
  end

  describe 'Initialization' do
    it 'should create new robot with random name' do
      expect(@r1).to have_attributes(name: [A - Z][A - Z][0 - 9][0 - 9][0 - 9])
    end

    it 'should create new robot with name' do
      r2 = Robot.new
      expect(@r1.name).not_to eq(r2.name)
    end
  end

  describe 'Reset' do
    it 'should create new name ' do
      @name1 = @r1.name
      @r1.name = reset
      @name2 = @r1.name
      expect @r1.name.to eq([A - Z][A - Z][0 - 9][0 - 9][0 - 9])
    end

    it 'should not be the same as the old name'
    expect @name1.not_to eq(@name2)
  end
end
