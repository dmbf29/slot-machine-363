require_relative '../slot_machine'

def test_scenario(reels, score)
  it "should return #{score} when given #{reels.join(', ')}" do
    slot_machine = SlotMachine.new
    expect(slot_machine.score(reels)).to eq(score)
  end
end


describe SlotMachine do
  describe '#score' do
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[joker star star], 20)
    test_scenario(%w[star joker star], 20)
    test_scenario(%w[star star joker], 20)
    test_scenario(%w[joker bell joker], 25)
    test_scenario(%w[bell joker joker], 25)
    test_scenario(%w[bell star bell], 0)
    test_scenario(%w[joker cherry seven], 0)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[star bell seven], 0)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry joker], 5)
    test_scenario(%w[cherry joker cherry], 5)
    test_scenario(%w[joker cherry cherry], 5)
  end
end
