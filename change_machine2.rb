class ChangeMachine

  def change(number)
    change = []
    loose = number

    while loose >= 25
      change << "XXV"
      loose -= 25
    end

    while loose >= 10
      change << "X"
      loose -= 10
    end

    while loose >= 5
      change << "V"
      loose -= 5
    end

    loose.times do
      change << "I"
    end
    return change
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return ["I"] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq(["I"])
    end
    it 'should return ["I", "I"] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq(["I", "I"])
    end

    it 'should return ["V"] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq(["V"])
    end

    it 'should return ["V", "I", "I"] when given 7' do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq(["V", "I", "I"])
    end

    it 'should return ["X"] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq(["X"])
    end

    it 'should return ["X", "V", "I", "I"] when given 17' do
      machine = ChangeMachine.new
      expect(machine.change(17)).to eq(["X", "V", "I", "I"])
    end

    it 'should return ["XXV", "V", "I"] when given 31' do
      machine = ChangeMachine.new
      expect(machine.change(31)).to eq(["XXV", "V", "I"])
    end

  end
end