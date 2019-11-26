require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')


class PersonTest < MiniTest::Test

def setup()
  @person = Person.new("Simon", 43)
  
end

def test_person_has_name
  assert_equal("Simon", @person.name)
end



end
