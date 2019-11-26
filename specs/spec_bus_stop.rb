require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < MiniTest::Test

def setup
  @bus = Bus.new(27, "Hunters Tryst")
  @person1 = Person.new("Simon", 43)
  @person2 = Person.new("Betty", 89)

  @bus_stop = BusStop.new("Polwarth")
end

def test_person_got_in_queue
  queue = @bus_stop.add_person_to_queue(@person1)
  assert_equal(1, queue.length)
end


end
