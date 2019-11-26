class Bus

attr_reader :route_num, :destination

def initialize(route_num, destination)
  @route_num = route_num
  @destination = destination
  @passengers = []
end


def drive()
  return "Brum brum"
end

def passenger_count
  return @passengers.length
end

def pick_up(new_passenger)
  @passengers.push(new_passenger)
end


def drop_off(passenger_leaving)
  @passengers.delete(passenger_leaving)
end


def empty_the_bus
  @passengers.clear
end


end
