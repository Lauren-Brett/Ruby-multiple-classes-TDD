class BusStop

attr_reader :queue

  def initialize(name)
    @name = name
    @queue = []
end

def add_person_to_queue(new_person)
  @queue.push(new_person)
end


end
