require_relative '../robot'

describe Robot do

  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new()
      expect(r1.name.length).to exist 
    end
  end

end
