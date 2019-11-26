require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(27, "Hunters Tryst")
    @person1 = Person.new("Simon", 43)
    @person2 = Person.new("Betty", 89)
  end

  def test_has_route_number
    assert_equal(27, @bus.route_num)
  end


  def test_drive_returns_noise
    assert_equal("Brum brum", @bus.drive)
  end


  def test_bus_starts_empty
    assert_equal(0, @bus.passenger_count)
  end

  def test_passenger_gets_on_bus
    @bus.pick_up(@person1)
    assert_equal(1, @bus.passenger_count)
  end


  def test_passenger_gets_off_bus
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.drop_off(@person1)
    assert_equal(1, @bus.passenger_count)
  end

  def test_bus_gets_emptied
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.empty_the_bus()
    assert_equal(0, @bus.passenger_count)
  end

end
