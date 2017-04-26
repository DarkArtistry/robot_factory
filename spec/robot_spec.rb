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
