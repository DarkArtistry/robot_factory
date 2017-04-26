require_relative '../robot'

describe Robot do

  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      expect(r1).to have_attributes(name: 'AB123')
    end
  end

  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      r2 = Robot.new
      expect(r1.name).not_to eq(r2.name)
    end
  end

end
