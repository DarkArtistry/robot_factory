require_relative '../robot'

describe Robot do

  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new()
      expect(r1.name).to eq('AB123')
    end
  end
  describe 'Reset' do
    it 'should create new name for robot' do
      
    end
  end

end
